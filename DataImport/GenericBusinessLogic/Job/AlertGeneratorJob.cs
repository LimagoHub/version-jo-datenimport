using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Exceptions;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Job;

namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Job
{
    public class AlertGeneratorJob : AbstractJob, IAlertGenerator
    {
        private readonly List<DataImportAlert> alerts = new List<DataImportAlert>();

        public IList<DataImportAlert> GetAlerts()
        {
            return alerts;
        }

        public override void RunAllSteps()
        {
            foreach (var step in _steps)
                try
                {
                    step.Init();
                    step.Execute();
                }
                catch (DataImportException e)
                {
                    throw new DataImportException($"Durchgereicht von {step.GetType().Name}: " + e.Message);
                }
                finally
                {
                    if (step is IAlertGenerator generator) alerts.AddRange(generator.GetAlerts());
                    step.Dispose();
                }
        }
    }
}