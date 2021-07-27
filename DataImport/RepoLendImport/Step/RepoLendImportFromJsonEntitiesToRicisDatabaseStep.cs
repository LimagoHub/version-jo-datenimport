using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step
{
    public class RepoLendImportFromJsonEntitiesToRicisDatabaseStep
        : DataImportStep<IList<Tuple<TblRepoLend, TblInstrument>>, IList<Tuple<TblRepoLend, TblInstrument>>>
    {
        private RepoLendImportFromJsonEntitiesToRicisDatabaseStep(IList<DataImportAlert> dataImportAlerts, string useCaseRepoLend, DateTime betrachtungstag)
            : base(dataImportAlerts,useCaseRepoLend, betrachtungstag)
        {
        }

        public static RepoLendImportFromJsonEntitiesToRicisDatabaseStep GetInstance(Dictionary<string, object> jobParameters)
        {
            var dataImportAlerts = (IList<DataImportAlert>)jobParameters["alerts"];
            var useCaseRepoLend = (string)jobParameters["useCaseRepoLend"];
            var betrachtungstag = (DateTime)jobParameters["betrachtungstag"];
            var step
                = new RepoLendImportFromJsonEntitiesToRicisDatabaseStep(dataImportAlerts, useCaseRepoLend, betrachtungstag);
            step.InitReader(new JsonEntitiesReader<Tuple<TblRepoLend, TblInstrument>>(useCaseRepoLend, betrachtungstag))
                .InitProcessor(new IdentityDataImportProcessor<IList<Tuple<TblRepoLend, TblInstrument>>>())
                .InitWriter(RepoLendRepositoryWriter.GetInstance());
            return step;
        }
    }
}