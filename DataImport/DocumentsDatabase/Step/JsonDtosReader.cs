﻿using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class JsonDtosReader<DTO> : IReader<IList<DTO>>
    {
        private readonly JsonFinder finder;

        public JsonDtosReader(Dictionary<string,object> jobParameters)
        {
            var dataImportAlerts = (IList<DataImportAlert>)jobParameters["alerts"];
            var useCaseRepoLend = (string)jobParameters["useCaseRepoLend"];
            var betrachtungstag = (DateTime)jobParameters["betrachtungstag"];
            finder = new JsonFinder(useCaseRepoLend, betrachtungstag);
        }

        public IList<DTO> Read()
        {
            var latestJson = finder.GetLatestJsonByGuid(finder.GetLatestArchivedFile().Guid);
            //if (latestJson.AlertTypeFullName != typeof(DTO).ToString()) return null;
            // Noch zu überlegen ob man den Check benötigt und wie er am saubersten ist
            return JsonConvert.DeserializeObject<IList<DTO>>(latestJson.JsonDtos);
        }
    }
}