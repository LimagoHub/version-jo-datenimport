using System;
using System.Collections.Generic;
using System.Linq;
using System.Transactions;
using BBk.Rc1.Ricis.Database.Contexts;
using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.Database.Repository;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step
{
    public class RepoLendRepositoryWriter : IWriter<IList<Tuple<TblRepoLend, TblInstrument>>>
    {
        private RepoLendRepositoryWriter()
        {
        }

        /// <summary>
        ///     Aktualisiert bereits in tblRepoLend vorhandene Repos
        ///     und fügt neue Repos in tblRepoLend ein, wobei der Primärschlüssel InstrumentNo
        ///     durch Einfügen eines neuen Eintrags in tblInstrument als Auto-ID ermittelt wird.
        ///     (möglicherweise auf andere Instrumente verallgemeinerbar)
        /// </summary>
        /// <param name="t">Liste von Tupeln von TblRepoLend- und TblInstrument-Objekten</param>
        public void Write(IList<Tuple<TblRepoLend, TblInstrument>> t)
        {
            using (var scope = new TransactionScope())
            {
                var tList = t.ToList();
                // bereits in Datenbank bestehende Repos anhand RepoLendNo finden
                // und deren InstrumentNo (Primärschlüssel) übernehmen (sonst 0)
                using (var context = new RicisEuroContext())
                {
                    tList.ForEach(x => x.Item1.InstrumentNo =
                        context.TblRepoLend.FirstOrDefault(y => y.RepoLendNo == x.Item1.RepoLendNo)?.InstrumentNo ?? 0);
                }

                // bereits bestehende Repos anhand InstrumentNo updaten
                var updates = tList.FindAll(
                    x => x.Item1.InstrumentNo != 0 && x.Item2.InstrumentType == "REPO");
                new RepositoryUpdater<TblRepoLend, RicisEuroContext>()
                    .Write(updates.ConvertAll(x => new Tuple<TblRepoLend, object>(x.Item1, x.Item1.InstrumentNo)));

                // stornierte Repos löschen und entsprechende Instrumente in tblInstrument updaten
                var deletes = tList.FindAll(
                    x => x.Item1.InstrumentNo != 0 && x.Item2.InstrumentType == "GLDLS");
                new RepositoryDeleter<TblRepoLend, RicisEuroContext>()
                    .Write(deletes.ConvertAll(x => new Tuple<TblRepoLend, object>(x.Item1, x.Item1.InstrumentNo)));
                deletes.ForEach(x => x.Item2.InstrumentNo = x.Item1.InstrumentNo);
                new RepositoryUpdater<TblInstrument, RicisEuroContext>()
                    .Write(deletes.ConvertAll(x => new Tuple<TblInstrument, object>(x.Item2, x.Item2.InstrumentNo)));

                // neue Einträge in tblInstrument schreiben (wodurch InstrumentNo gesetzt wird)
                var inserts = tList.FindAll(
                    x => x.Item1.InstrumentNo == 0 && x.Item2.InstrumentType == "REPO");
                new RepositoryInserter<TblInstrument, RicisEuroContext>()
                    .Write(inserts.ConvertAll(x => x.Item2));

                // InstrumentNo übernehmen und neue Einträge in tblRepoLend schreiben
                inserts.ForEach(x => x.Item1.InstrumentNo = x.Item2.InstrumentNo);
                new RepositoryInserter<TblRepoLend, RicisEuroContext>()
                    .Write(inserts.ConvertAll(x => x.Item1));

                scope.Complete();
            }
        }

        public static RepoLendRepositoryWriter GetInstance()
        {
            return new RepoLendRepositoryWriter();
        }
    }
}