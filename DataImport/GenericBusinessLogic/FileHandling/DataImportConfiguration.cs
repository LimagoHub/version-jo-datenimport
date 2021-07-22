using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Exceptions;

namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.FileHandling
{
    public class DataImportConfiguration : IDataImportConfiguration
    {
        public DataImportConfiguration()
        {
            Dictionary.Add(new Tuple<string, string>("RepoLend", "Path"),
                @"R:\Zentrale\ZB-Rc\Dateien\Rc1.28_Infrastruktur\Rc1.28.02_Interne_Anwendungen\Ricis\Roadmap Pakete\Asterics\Dateiimporte Beispieldateien\Euro\");
            Dictionary.Add(new Tuple<string, string>("RepoLend", "FileNameFormat"),
                "RC_UMSATZREPO{0:yyyyMMdd}[0-9]{{8}}.csv");
        }

        private IDictionary<Tuple<string, string>, string> Dictionary { get; }
            = new Dictionary<Tuple<string, string>, string>();

        public string GetValue(string useCase, string parameter)
        {
            if (Dictionary.TryGetValue(new Tuple<string, string>(useCase, parameter), out var retval))
                return retval;
            throw new DataImportException(
                $"Kein Konfigurationseintrag für Use Case {useCase} und Parameter {parameter} gefunden.");
        }
    }
}