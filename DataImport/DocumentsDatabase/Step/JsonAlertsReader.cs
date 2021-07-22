using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class JsonAlertsReader<A> : IReader<IList<A>>
    {
        private readonly JsonFinder finder;

        public JsonAlertsReader(string useCase, DateTime betrachtungstag)
        {
            finder = new JsonFinder(useCase, betrachtungstag);
        }

        public IList<A> Read()
        {
            var latestJson = finder.GetLatestJsonByGuid(finder.GetLatestArchivedFile().Guid);
            //if (Type.GetType(latestJson.AlertTypeFullName) != typeof(A)) return null;
            // (siehe JsonDtosReader)
            return JsonConvert.DeserializeObject<List<A>>(latestJson.JsonAlerts);
        }
    }
}