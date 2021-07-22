using System;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class ArchivedFileReader : IReader<ArchivedFile>
    {
        private readonly JsonFinder finder;

        public ArchivedFileReader(string useCase, DateTime betrachtungstag)
        {
            finder = new JsonFinder(useCase, betrachtungstag);
        }

        public ArchivedFile Read()
        {
            return finder.GetLatestArchivedFile();
        }
    }
}