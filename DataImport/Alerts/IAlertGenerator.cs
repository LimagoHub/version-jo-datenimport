using System.Collections.Generic;

namespace BBk.Rc1.Ricis.DataImport.Alerts
{
    public interface IAlertGenerator
    {
        IList<DataImportAlert> GetAlerts();
    }
}