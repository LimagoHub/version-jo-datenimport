using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class JsonEntitiesReader<E> : IReader<IList<E>>
    {
        private readonly JsonFinder finder;

        public JsonEntitiesReader(string useCase, DateTime betrachtungstag)
        {
            finder = new JsonFinder(useCase, betrachtungstag);
        }

        public IList<E> Read()
        {
            var latestJson = finder.GetLatestJsonByGuid(finder.GetLatestArchivedFile().Guid);
            //if (Type.GetType(latestJson.EntityTypeFullName) != typeof(E)) return null;
            // (siehe JsonDtosReader)
            return JsonConvert.DeserializeObject<IList<E>>(latestJson.JsonEntities);
        }
    }
}