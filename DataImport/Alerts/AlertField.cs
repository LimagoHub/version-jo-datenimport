using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Reflection;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.DataImport.Alerts
{
    /// <summary>
    ///     Datenstruktur für die "Koordinaten" eines von einem DataImportAlert betroffenen Datenfelds
    /// </summary>
    public class AlertField
    {
        private PropertyInfo _propertyInfo;

        // Annotationen für Code First
        [Key] public Guid DtoGuid { get; set; }

        [NotMapped]
        [JsonIgnore]
        public PropertyInfo PropertyInfo
        {
            get => _propertyInfo;
            set
            {
                _propertyInfo = value;
                PropertyName = value.Name;
            }
        }

        public string PropertyName { get; set; }

        public override string ToString()
        {
            return $"{DtoGuid}, {PropertyName}";
        }
    }
}