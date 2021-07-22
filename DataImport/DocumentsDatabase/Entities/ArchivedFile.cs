using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities
{
    public class ArchivedFile
    {
        // PK
        public Guid Guid { get; set; }
        public DateTime TimeGenerated { get; set; }
        public string UseCase { get; set; }
        public DateTime Betrachtungstag { get; set; }
        public string FileName { get; set; }
        public string FileFormat { get; set; }
        public string FileContents { get; set; }

        public ICollection<JsonDtosAlertsEntities> JsonDtosAlertsEntities { get; set; }
    }
}