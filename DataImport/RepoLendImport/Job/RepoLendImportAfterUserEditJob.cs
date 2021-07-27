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
            job.JobParameters["betrachtungstag"] = betrachtungstag;
            job.JobParameters["useCaseRepoLend"] = useCaseRepoLend;
            
            
            job.AddStep(RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep
                .GetInstance(job.JobParameters));
            job.AddStep(RepoLendImportFromJsonEntitiesToRicisDatabaseStep
                .GetInstance(job.JobParameters));
            return job;
        }
    }
}