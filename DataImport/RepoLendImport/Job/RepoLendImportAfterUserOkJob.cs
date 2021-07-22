using System;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Job;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Job
{
    public class RepoLendImportAfterUserOkJob : AlertGeneratorJob
    {
        private RepoLendImportAfterUserOkJob()
        {
        }

        public static RepoLendImportAfterUserOkJob GetInstance(string useCaseRepoLend, DateTime betrachtungstag)
        {
            var job = new RepoLendImportAfterUserOkJob();
            job.AddStep(RepoLendImportFromJsonEntitiesToRicisDatabaseStep
                .GetInstance(useCaseRepoLend, betrachtungstag));
            return job;
        }
    }
}