using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step
{
    // kann völlig generisch implementiert werden
    public class RepoLendImportFromCsvFileToArchivedFileStep
        : DataImportStep<ArchivedFile, ArchivedFile>
    {
        private RepoLendImportFromCsvFileToArchivedFileStep(IList<DataImportAlert> dataImportAlerts,string useCaseRepoLend, DateTime betrachtungstag)
            : base(dataImportAlerts, useCaseRepoLend, betrachtungstag)
        {
        }

        public static RepoLendImportFromCsvFileToArchivedFileStep GetInstance(IList<DataImportAlert> dataImportAlerts,string useCaseRepoLend,
            DateTime betrachtungstag, string fileName)
        {
            var step
                = new RepoLendImportFromCsvFileToArchivedFileStep(dataImportAlerts,useCaseRepoLend, betrachtungstag);
            step
                .InitReader(new TextToArchivedFileReader(useCaseRepoLend, betrachtungstag, fileName))
                .InitProcessor(new IdentityDataImportProcessor<ArchivedFile>()) // "leerer" Prozessor
                .InitWriter(new ArchivedFileWriter());
            return step;
        }
    }
}