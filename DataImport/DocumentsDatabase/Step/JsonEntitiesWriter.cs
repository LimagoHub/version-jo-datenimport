using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Contexts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.CrudRepository;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class JsonEntitiesWriter<E> : IWriter<IList<E>>
    {
        private readonly JsonFinder finder;

        public JsonEntitiesWriter(string useCase, DateTime betrachtungstag)
        {
            finder = new JsonFinder(useCase, betrachtungstag);
        }

        /// <summary>
        ///     Schreibt Entities in das neueste JSON des neuesten ArchivedFile zu dem im Konstruktor
        ///     angegebenen Use Case und Betrachtungstag.
        /// </summary>
        /// <param name="t"></param>
        public void Write(IList<E> t)
        {
            var latestJson = finder.GetLatestJsonByGuid(finder.GetLatestArchivedFile().Guid);
            latestJson.EntityTypeFullName = typeof(E).FullName;
            latestJson.JsonEntities = JsonConvert.SerializeObject(t);

            using (var context = new DocumentsDatabaseContext())
            {
                ICrudRepository<JsonDtosAlertsEntities> repo = new CrudRepository<JsonDtosAlertsEntities>(context);
                repo.Update(latestJson);
                repo.Save();
            }
        }
    }
}