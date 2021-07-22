using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Contexts;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Exceptions;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Job;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.Console;

namespace BBk.Rc1.Ricis.DataImport
{
    public class Program
    {
        public static void Main(string[] args)
        {
            EnsureCreatedDatabases();
            Run(new DateTime(2021, 1, 25)); // importiert fachlich korrekte Test-Datei
            Run(new DateTime(2021, 1, 26)); // importiert Test-Datei, die genau einen Fehler-Alert verursacht
            Run(new DateTime(2021, 1, 27)); // importiert Test-Datei, die je einen Fehler und eine Warnung verursacht
            Run(new DateTime(2021, 1, 28)); // importiert Test-Datei, die genau eine Warnung verursacht

            // alle Dateien in Verzeichnis
            // @"R:\Zentrale\ZB-Rc\Dateien\Rc1.28_Infrastruktur\Rc1.28.02_Interne_Anwendungen\Ricis\Roadmap Pakete\Asterics\Dateiimporte Beispieldateien\Euro"
        }

        private static void EnsureCreatedDatabases()
        {
            using (var documentsDatabaseContext = new DocumentsDatabaseContext())
            {
                documentsDatabaseContext.Database.EnsureCreated();
            }
        }

        private static void Run(DateTime betrachtungstag)
        {
            RunRepoLendImportAutomaticJob(betrachtungstag);
        }

        private static void RunRepoLendImportAutomaticJob(DateTime betrachtungstag)
        {
            RepoLendImportAutomaticJob job = null;
            try
            {
                job = RepoLendImportAutomaticJob.GetInstance("RepoLend", betrachtungstag);
                job.RunAllSteps();
                var alerts = (List<DataImportAlert>) job.GetAlerts();
                if (alerts.Find(x => x.Level == AlertLevel.Warnung) != null)
                {
                    Console.WriteLine(
                        $"Der Import-Job für den Betrachtungstag {betrachtungstag.ToShortDateString()} ergab Warnungen.");
                    Console.WriteLine($"{alerts?.Count ?? 0} Alerts:");
                    new ConsoleWriter<List<DataImportAlert>>().Write(alerts);
                    Console.WriteLine();
                }
                else
                {
                    Console.WriteLine(
                        $"Der Import-Job für den Betrachtungstag {betrachtungstag.ToShortDateString()} war erfolgreich.");
                }
            }
            catch (DataImportException e)
            {
                Console.WriteLine(e.Message);
                var alerts = (List<DataImportAlert>) job?.GetAlerts();
                if (alerts?.Find(x => x.Level == AlertLevel.Fehler) != null)
                {
                    Console.WriteLine(
                        $"Der Import-Job für den Betrachtungstag {betrachtungstag.ToShortDateString()} ergab Fehler.");
                    Console.WriteLine($"{alerts?.Count ?? 0} Alerts:");
                    new ConsoleWriter<List<DataImportAlert>>().Write(alerts);
                    Console.WriteLine();
                }
            }
            finally
            {
                job?.Dispose();
                Console.WriteLine();
                Console.Write("Eingabetaste drücken ...");
                Console.ReadLine();
            }
        }
    }
}