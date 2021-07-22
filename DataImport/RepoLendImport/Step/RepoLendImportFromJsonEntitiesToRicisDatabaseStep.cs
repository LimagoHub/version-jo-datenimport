using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step
{
    public class RepoLendImportFromJsonEntitiesToRicisDatabaseStep
        : DataImportStep<IList<Tuple<TblRepoLend, TblInstrument>>, IList<Tuple<TblRepoLend, TblInstrument>>>
    {
        private RepoLendImportFromJsonEntitiesToRicisDatabaseStep(string useCaseRepoLend, DateTime betrachtungstag)
            : base(useCaseRepoLend, betrachtungstag)
        {
        }

        public static RepoLendImportFromJsonEntitiesToRicisDatabaseStep GetInstance(string useCaseRepoLend,
            DateTime betrachtungstag)
        {
            var step
                = new RepoLendImportFromJsonEntitiesToRicisDatabaseStep(useCaseRepoLend, betrachtungstag);
            step.InitReader(new JsonEntitiesReader<Tuple<TblRepoLend, TblInstrument>>(useCaseRepoLend, betrachtungstag))
                .InitProcessor(new IdentityDataImportProcessor<IList<Tuple<TblRepoLend, TblInstrument>>>())
                .InitWriter(RepoLendRepositoryWriter.GetInstance());
            return step;
        }
    }
}