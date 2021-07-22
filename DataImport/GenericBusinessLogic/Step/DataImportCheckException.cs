using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.Text;

namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step
{

    [Serializable]
    public class DataImportCheckException : Exception
    {
        public DataImportCheckException(string ups) : base(ups)
        {
        }

        protected DataImportCheckException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
            // ...
        }

        public override void GetObjectData(SerializationInfo info, StreamingContext context)
        {
            base.GetObjectData(info, context);
        }
    }
}
