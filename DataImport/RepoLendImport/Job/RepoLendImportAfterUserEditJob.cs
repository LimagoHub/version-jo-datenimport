using System;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Job;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Job
{
    public class RepoLendImportAfterUserEditJob : AlertGeneratorJob
    {
        private RepoLendImportAfterUserEditJob()
        {
        }

        public static RepoLendImportAfterUserEditJob GetInstance(string useCaseRepoLend, DateTime betrachtungstag)
        {
            var job = new RepoLendImportAfterUserEditJob();
            job.AddStep(RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep
                .GetInstance(useCaseRepoLend, betrachtungstag));
            job.AddStep(RepoLendImportFromJsonEntitiesToRicisDatabaseStep
                .GetInstance(useCaseRepoLend, betrachtungstag));
            return job;
        }
    }
}