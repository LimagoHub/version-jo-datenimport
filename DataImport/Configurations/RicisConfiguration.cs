using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Configurations
{
    public class RicisConfiguration : IRicisConfiguration
    {
        private readonly IDictionary<Tuple<string, string>, string> dictionary;

        public RicisConfiguration()
        {
            dictionary = new ConfigReader().Read(); // ändern, um es testbar zu machen
        }

        public string GetValue(string parameter, string instance)
        {
            if (dictionary.TryGetValue(new Tuple<string, string>(parameter, instance), out var retval))
                return retval;
            if (dictionary.TryGetValue(new Tuple<string, string>(parameter, "global"), out retval))
                return retval;
            throw new RicisConfigurationException(
                $"Config-Eintrag für Parameter {parameter} und Instanz {instance} nicht gefunden.");
        }
    }
}