using System;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Contexts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.CrudRepository;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class ArchivedFileWriter : IWriter<ArchivedFile>
    {
        public void Write(ArchivedFile t)
        {
            t.Guid = Guid.NewGuid();
            t.TimeGenerated = DateTime.Now;
            using (var context = new DocumentsDatabaseContext())
            {
                ICrudRepository<ArchivedFile> repo = new CrudRepository<ArchivedFile>(context);
                repo.Insert(t);
                repo.Save();
            }
        }
    }
}