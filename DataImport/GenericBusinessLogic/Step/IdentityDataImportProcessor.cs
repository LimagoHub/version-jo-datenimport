using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;

namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step
{
    /// <summary>
    ///     Leerer Prozessor für Steps, die nur aus Reader und Writer bestehen.
    /// </summary>
    /// <typeparam name="T">Identischer Ein- und Ausgabetyp</typeparam>
    public class IdentityDataImportProcessor<T> : IDataImportProcessor<T, T>
    {
        public IList<DataImportAlert> GetAlerts()
        {
            return new List<DataImportAlert>();
        }

        public T Process(T p)
        {
            return p;
        }
    }
}