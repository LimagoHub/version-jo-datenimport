using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.FileHandling;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services
{
    public class RepoLendInitImportFileService : InitImportFileService
    {
        private RepoLendInitImportFileService(IDataImportConfiguration config, string useCase) : base(config, useCase)
        {
        }

        public static RepoLendInitImportFileService GetInstance(string useCaseRepoLend)
        {
            return new RepoLendInitImportFileService(new DataImportConfiguration(), useCaseRepoLend);
        }
    }
}