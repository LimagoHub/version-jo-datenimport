using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.AbstractServices;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services
{
    public class
        RepoLendConsistencyWithDatabaseCheckService : IBusinessRulesCheckService<
            IList<Tuple<TblRepoLend, TblInstrument>>>
    {
        public RepoLendConsistencyWithDatabaseCheckService(IList<DataImportAlert> alertList,
            IRepoLendConsistencyQueries repoLendConsistencyQueries)
        {
            AlertList = alertList;
            RepoLendConsistencyQueries = repoLendConsistencyQueries;
        }

        private IRepoLendConsistencyQueries RepoLendConsistencyQueries { get; }
        private IList<DataImportAlert> AlertList { get; }

        public void Check(IList<Tuple<TblRepoLend, TblInstrument>> p)
        {
            foreach (var item in p) CheckAgainstDatabase(item);
        }

        private void CheckAgainstDatabase(Tuple<TblRepoLend, TblInstrument> item)
        {
            var repoLendNo = (int) item.Item1.RepoLendNo;

            if (item.Item2.InstrumentType == "GLDLS" || // bei Stornos (siehe RepoLendTransformService)
                RepoLendConsistencyQueries.FindByRepoLendNo(repoLendNo) == default(TblRepoLend))
                return;

            AlertList.Add(DataImportAlert.GetInstance<TblRepoLend>(
                    AlertLevel.Fehler,
                    $"Geschäft mit RepoLendNo {repoLendNo} bereits in tblRepoLend vorhanden.")
                .AddAlertField<TblRepoLend>(Guid.Empty, "RepoLendNo"));
        }
    }
}