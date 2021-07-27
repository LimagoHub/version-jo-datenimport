using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Contexts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.CrudRepository;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class JsonAlertsWriter<A> : IWriter<IList<A>>
        where A : IAlert
    {
        private readonly JsonFinder finder;

        public JsonAlertsWriter(Dictionary<string, object> jobParameters)
        {
            var dataImportAlerts = (IList<DataImportAlert>)jobParameters["alerts"];
            var useCase = (string)jobParameters["useCaseRepoLend"];
            var betrachtungstag = (DateTime)jobParameters["betrachtungstag"];
            finder = new JsonFinder(useCase, betrachtungstag);
        }

        /// <summary>
        ///     Schreibt Alerts in das neueste JSON des neuesten ArchivedFile zu dem im Konstruktor
        ///     angegebenen Use Case und Betrachtungstag.
        /// </summary>
        /// <param name="t"></param>
        public void Write(IList<A> t)
        {
            var latestJson = finder.GetLatestJsonByGuid(finder.GetLatestArchivedFile().Guid);
            latestJson.AlertTypeFullName = typeof(A).FullName;
            latestJson.JsonAlerts = JsonConvert.SerializeObject(t);
            if (((List<A>) t).Find(x => x.Level == AlertLevel.Warnung) != null
                && ((List<A>) t).Find(x => x.Level == AlertLevel.Fehler) == null)
                latestJson.WarningsApprovedByUser = false;

            using (var context = new DocumentsDatabaseContext())
            {
                ICrudRepository<JsonDtosAlertsEntities> repo = new CrudRepository<JsonDtosAlertsEntities>(context);
                repo.Update(latestJson);
                repo.Save();
            }
        }
    }
}