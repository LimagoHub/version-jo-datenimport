using System;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step
{
    // kann völlig generisch implementiert werden
    public class RepoLendImportFromCsvFileToArchivedFileStep
        : DataImportStep<ArchivedFile, ArchivedFile>
    {
        private RepoLendImportFromCsvFileToArchivedFileStep(string useCaseRepoLend, DateTime betrachtungstag)
            : base(useCaseRepoLend, betrachtungstag)
        {
        }

        public static RepoLendImportFromCsvFileToArchivedFileStep GetInstance(string useCaseRepoLend,
            DateTime betrachtungstag, string fileName)
        {
            var step
                = new RepoLendImportFromCsvFileToArchivedFileStep(useCaseRepoLend, betrachtungstag);
            step
                .InitReader(new TextToArchivedFileReader(useCaseRepoLend, betrachtungstag, fileName))
                .InitProcessor(new IdentityDataImportProcessor<ArchivedFile>()) // "leerer" Prozessor
                .InitWriter(new ArchivedFileWriter());
            return step;
        }
    }
}