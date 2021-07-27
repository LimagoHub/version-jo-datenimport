using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step;
using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step
{
    /// <summary>
    ///     In diesem Step werden die in die DocumentsDatabase geschriebenen JsonDtos geprüft
    ///     und in JsonEntities transformiert. Alerts werden in der DocumentsDatabase abgelegt.
    /// </summary>
    public class RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep
        : DataImportStep<IList<RepoLendDto>, IList<Tuple<TblRepoLend, TblInstrument>>>
    {
        private RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep(IList<DataImportAlert> dataImportAlerts, string useCaseRepoLend, DateTime betrachtungstag)
            : base(dataImportAlerts, useCaseRepoLend, betrachtungstag)
        {
        }

        public static RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep GetInstance(Dictionary<string, object> jobParameters)
        {
            var dataImportAlerts = (IList<DataImportAlert>) jobParameters["alerts"];
            var useCaseRepoLend = (string)jobParameters["useCaseRepoLend"];
            var betrachtungstag = (DateTime)jobParameters["betrachtungstag"];
            var step
                = new RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep(dataImportAlerts,useCaseRepoLend, betrachtungstag);
            
            step.InitReader(new JsonDtosReader<RepoLendDto>(jobParameters))
                .InitProcessor(RepoLendCheckTransformProcessor.GetInstance(jobParameters))
                .InitAlertsWriter(new JsonAlertsWriter<DataImportAlert>(jobParameters))
                .InitWriter(
                    new JsonEntitiesWriter<Tuple<TblRepoLend, TblInstrument>>(jobParameters));
            return step;
        }
    }
}