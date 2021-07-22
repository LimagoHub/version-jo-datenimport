using System;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities
{
    public class JsonDtosAlertsEntities
    {
        // PK, FK
        public Guid ArchivedFileGuid { get; set; }

        // PK
        public DateTime TimeGenerated { get; set; }
        public string DtoTypeFullName { get; set; }
        public string JsonDtos { get; set; }
        public string AlertTypeFullName { get; set; }
        public string JsonAlerts { get; set; }
        public string EntityTypeFullName { get; set; }
        public string JsonEntities { get; set; }
        public bool? WarningsApprovedByUser { get; set; }

        public ArchivedFile ArchivedFile { get; set; }
    }
}