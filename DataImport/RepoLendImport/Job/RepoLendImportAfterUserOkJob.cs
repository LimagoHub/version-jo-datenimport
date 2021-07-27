using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Job;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Job
{
    public class RepoLendImportAfterUserOkJob : AlertGeneratorJob
    {
        private RepoLendImportAfterUserOkJob()
        {
        }

        public static RepoLendImportAfterUserOkJob GetInstance(Dictionary<string, object> jobParameters)
        {
            var job = new RepoLendImportAfterUserOkJob();
            job.AddStep(RepoLendImportFromJsonEntitiesToRicisDatabaseStep
                .GetInstance(jobParameters));
            return job;
        }
    }
}