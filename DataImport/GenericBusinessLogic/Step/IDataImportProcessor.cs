using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;

namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step
{
    public interface IDataImportProcessor<P, R> : IProcessor<P, R>, IAlertGenerator
    {
    }
}