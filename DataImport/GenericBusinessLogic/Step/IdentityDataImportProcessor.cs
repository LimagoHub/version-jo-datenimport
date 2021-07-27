using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;

namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step
{
    /// <summary>
    ///     Leerer Prozessor für Steps, die nur aus Reader und Writer bestehen.
    /// </summary>
    /// <typeparam name="T">Identischer Ein- und Ausgabetyp</typeparam>
    public class IdentityDataImportProcessor<T> : IProcessor<T, T>
    {
        
       

        public T Process(T p)
        {
            return p;
        }
    }
}