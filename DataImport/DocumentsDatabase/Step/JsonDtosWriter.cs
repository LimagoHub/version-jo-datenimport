using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Contexts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.CrudRepository;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class JsonDtosWriter<DTO> : IWriter<IList<DTO>>
    {
        private readonly JsonFinder finder;

        public JsonDtosWriter(string useCase, DateTime betrachtungstag)
        {
            finder = new JsonFinder(useCase, betrachtungstag);
        }

        public void Write(IList<DTO> t)
        {
            var archivedFileGuid = finder.GetLatestArchivedFile().Guid;
            var jsonDtosAlertsEntities = new JsonDtosAlertsEntities
            {
                ArchivedFileGuid = archivedFileGuid,
                TimeGenerated = DateTime.Now,
                DtoTypeFullName = typeof(DTO).FullName,
                JsonDtos = JsonConvert.SerializeObject(t),
                WarningsApprovedByUser = null
            };

            using (var context = new DocumentsDatabaseContext())
            {
                ICrudRepository<JsonDtosAlertsEntities> repo = new CrudRepository<JsonDtosAlertsEntities>(context);
                repo.Insert(jsonDtosAlertsEntities);
                repo.Save();
            }
        }
    }
}