using System;
using System.Collections.Generic;
using System.Linq;
using BBk.Rc1.Ricis.Configurations.Contexts;
using BBk.Rc1.Ricis.Configurations.Entities;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using Microsoft.EntityFrameworkCore;

namespace BBk.Rc1.Ricis.Configurations
{
    /// <summary>
    ///     Klasse zum Einlesen von RICIS-Konfigurations-Parametern.
    ///     Diese Parameter werden in einen Dictionary-Datentyp eingelesen.
    ///     Das Dictionary hat folgenden Aufbau:
    ///     1) Suchschlüssel: Zusammengesetzter Schlüssel aus Parametername und RICIS-Instanz
    ///     2) Value: Gesuchter Konfigurations-Wert
    /// </summary>
    public class ConfigReader : IReader<IDictionary<Tuple<string, string>, string>>
    {
        /// <summary>
        ///     Die RICIS-Konfigurationsparameter werden in ein Dictionary eingelesen,
        ///     welches von der Methode zurückgegeben wird.
        /// </summary>
        /// <returns>Dictionary mit Konfigurations-Parametern</returns>
        public IDictionary<Tuple<string, string>, string> Read()
        {
            List<TblConfig> TblConfigs;

            using (var context = new RicisConfigContext())
            {
                TblConfigs = (from c in context.TblConfig.Include(x => x.TblConfigInstance) select c).ToList();
            }

            var dictionary = new Dictionary<Tuple<string, string>, string>();

            foreach (var item in TblConfigs)
                if (item.TblConfigInstance.Count == 0)
                    dictionary.Add(new Tuple<string, string>(item.Parameter, "global"), item.Value);
                else
                    foreach (var item2 in item.TblConfigInstance)
                        dictionary.Add(new Tuple<string, string>(item.Parameter, item2.Instance), item2.Value);

            return dictionary;
        }
    }
}