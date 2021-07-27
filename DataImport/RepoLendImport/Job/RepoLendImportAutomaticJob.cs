using System;
using System.Collections.Generic;
using System.IO;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Exceptions;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Job;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Services;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Job
{
    public class RepoLendImportAutomaticJob : AlertGeneratorJob
    {
        private RepoLendImportAutomaticJob()
        {
        }

        public IList<FileInfo> ImportFileInfos { get; private set; }

        public static RepoLendImportAutomaticJob GetInstance(string useCaseRepoLend, DateTime betrachtungstag)
        {
            if (new RepoLendCheckImportDateService().IsDataInDatabase(betrachtungstag))
                throw new DataImportException(
                    $"Bereits Daten zum Handelstag {betrachtungstag:d} in der Datenbank vorhanden.");
            var importFileInfos
                = RepoLendInitImportFileService.GetInstance(useCaseRepoLend).GetFiles(betrachtungstag);
            if (importFileInfos.Count == 0)
                throw new DataImportException($"Keine Importdatei zum Datum {betrachtungstag:d} vorhanden.");
            if (importFileInfos.Count > 1)
                throw new DataImportException($"Mehr als eine Importdatei zum Datum {betrachtungstag:d} vorhanden.");
            var fileName = importFileInfos[0].FullName;
            var job = new RepoLendImportAutomaticJob
            {
                ImportFileInfos = importFileInfos
            };
            job.AddStep(RepoLendImportFromCsvFileToArchivedFileStep
                .GetInstance(job.GetAlerts(),useCaseRepoLend, betrachtungstag, fileName));
            job.AddStep(RepoLendImportFromArchivedFileToJsonDtosStep
                .GetInstance(job.GetAlerts(),useCaseRepoLend, betrachtungstag));
            job.AddStep(RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep
                .GetInstance(job.JobParameters));
            job.AddStep(RepoLendImportFromJsonEntitiesToRicisDatabaseStep
                .GetInstance(job.JobParameters));
            return job;
        }
    }
}