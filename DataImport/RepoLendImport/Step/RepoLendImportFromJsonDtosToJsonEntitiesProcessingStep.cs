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
        private RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep(string useCaseRepoLend, DateTime betrachtungstag)
            : base(useCaseRepoLend, betrachtungstag)
        {
        }

        public static RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep GetInstance(string useCaseRepoLend,
            DateTime betrachtungstag)
        {
            var step
                = new RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep(useCaseRepoLend, betrachtungstag);
            step.InitReader(new JsonDtosReader<RepoLendDto>(useCaseRepoLend, betrachtungstag))
                .InitProcessor(RepoLendCheckTransformProcessor.GetInstance(betrachtungstag))
                .InitAlertsWriter(new JsonAlertsWriter<DataImportAlert>(useCaseRepoLend, betrachtungstag))
                .InitWriter(
                    new JsonEntitiesWriter<Tuple<TblRepoLend, TblInstrument>>(useCaseRepoLend, betrachtungstag));
            return step;
        }
    }
}