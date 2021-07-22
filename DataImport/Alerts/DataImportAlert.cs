using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.DataImport.Alerts
{
    /// <summary>
    ///     Datenstruktur für alle Fehler-, Warn- und Infomeldungen, die beim Datenimport
    ///     (z. B. durch einen IBusinessRulesChecker) erzeugt werden
    /// </summary>
    public class DataImportAlert : IAlert
    {
        private Type _dtoType;

        // Annotationen für Code First
        [Key] public Guid AlertId { get; set; }

        [NotMapped]
        [JsonIgnore]
        public Type DtoType
        {
            get => _dtoType;
            set
            {
                _dtoType = value;
                DtoTypeFullName = value.FullName;
            }
        }

        public string DtoTypeFullName { get; set; }
        public List<AlertField> AlertFields { get; set; } = new List<AlertField>();
        public DateTime Time { get; set; }
        public string Message { get; set; }

        public AlertLevel Level { get; set; }
        // Alternative zu Alert Message: Alert Code als Key eines Alert Message Dictionary

        /// <summary>
        ///     Factory-Methode zur Erzeugung eines DataImportAlert aus fachlichen Informationen
        /// </summary>
        /// <typeparam name="DTO">Datentyp, der einem eingelesenen Datensatz entspricht</typeparam>
        /// <param name="level">Schweregrad des Alert</param>
        /// <param name="message">Textmeldung an User</param>
        /// <returns></returns>
        public static DataImportAlert GetInstance<DTO>(AlertLevel level, string message)
        {
            return GetInstance(level, message, typeof(DTO));
        }

        public static DataImportAlert GetInstance(AlertLevel level, string message, Type type)
        {
            return new DataImportAlert
            {
                AlertId = Guid.NewGuid(),
                Level = level,
                DtoType = type,
                Time = DateTime.Now,
                Message = message
            };
        }

        /// <summary>
        ///     Methode zum Hinzufügen der "Koordinaten" eines betroffenen Datenfelds zum Alert
        /// </summary>
        /// <typeparam name="DTO">Datentyp, der einem eingelesenen Datensatz entspricht</typeparam>
        /// <param name="dtoGuid">Guid des betroffenen Datensatzes</param>
        /// <param name="propertyName">Betroffenes Datenfeld im betroffenen Datensatz (Property im DTO)</param>
        /// <returns></returns>
        public DataImportAlert AddAlertField<DTO>(Guid dtoGuid, string propertyName)
        {
            AlertFields.Add(new AlertField
            {
                DtoGuid = dtoGuid,
                PropertyInfo = typeof(DTO).GetProperty(propertyName)
            });
            return this;
        }

        public DataImportAlert AddAlertField(Guid dtoGuid, string propertyName, Type type)
        {
            AlertFields.Add(new AlertField
            {
                DtoGuid = dtoGuid,
                PropertyInfo = type.GetProperty(propertyName)
            });
            return this;
        }

        public DataImportAlert AddAlertField(Guid dtoGuid, string propertyName)
        {
            AlertFields.Add(new AlertField
            {
                DtoGuid = dtoGuid,
                PropertyInfo = DtoType.GetProperty(propertyName)
            });
            return this;
        }

        public DataImportAlert AddAlertField<T>(T item, string propertyName, string idName = "Guid")
        {
            AlertFields.Add(new AlertField
            {
                DtoGuid = (Guid) typeof(T).GetProperty(idName).GetValue(item),
                PropertyInfo = typeof(T).GetProperty(propertyName)
            });
            return this;
        }


        public override string ToString()
        {
            var retval = $"{Level}, {DtoTypeFullName}, {Time}, {Message}";
            foreach (var alertField in AlertFields) retval += $"\n  {alertField}";
            return retval;
        }
    }
}