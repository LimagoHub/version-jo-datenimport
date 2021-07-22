using System;
using System.Linq;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Contexts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using BBk.Rc1.Ricis.SharedLibraries.CrudRepository;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class JsonFinder
    {
        private readonly DateTime betrachtungstag;
        private readonly string useCase;

        public JsonFinder(string useCase, DateTime betrachtungstag)
        {
            this.useCase = useCase;
            this.betrachtungstag = betrachtungstag;
        }

        /// <summary>
        ///     Gibt die zuletzt abgespeicherte Datei zu dem im Konstruktor festgelegten
        ///     Use Case und Betrachtungstag zurück.
        /// </summary>
        /// <returns></returns>
        public ArchivedFile GetLatestArchivedFile()
        {
            using (var context = new DocumentsDatabaseContext())
            {
                return new CrudRepository<ArchivedFile>(context).GetAll().ToList()
                    .FindAll(x => x.UseCase == useCase && x.Betrachtungstag == betrachtungstag)
                    .OrderBy(x => x.TimeGenerated).LastOrDefault();
            }
        }

        public JsonDtosAlertsEntities GetLatestJsonByGuid(Guid archivedFileGuid)
        {
            using (var context = new DocumentsDatabaseContext())
            {
                return new CrudRepository<JsonDtosAlertsEntities>(context).GetAll().ToList()
                    .FindAll(x => x.ArchivedFileGuid == archivedFileGuid)
                    .OrderBy(x => x.TimeGenerated).LastOrDefault();
            }
        }
    }
}