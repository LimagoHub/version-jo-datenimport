using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step;
using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step.ReadersWritersProcessors
{
    public class RepoLendCsvFromArchivedFileReader : IReader<IList<RepoLendDto>>
    {
        private readonly DateTime betrachtungstag;
        private readonly string useCaseRepoLend;

        public RepoLendCsvFromArchivedFileReader(string useCaseRepoLend, DateTime betrachtungstag)
        {
            this.useCaseRepoLend = useCaseRepoLend;
            this.betrachtungstag = betrachtungstag;
        }

        public IList<RepoLendDto> Read()
        {
            var archivedFileContents
                = new ArchivedFileReader(useCaseRepoLend, betrachtungstag).Read().FileContents;
            return RepoLendCsvReader.GetCsvStringReaderInstance(archivedFileContents).Read();
        }
    }
}