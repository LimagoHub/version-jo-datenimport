using System;
using System.Runtime.Serialization;

namespace BBk.Rc1.Ricis.Configurations
{
    public class RicisConfigurationException : Exception
    {
        public RicisConfigurationException()
        {
        }

        public RicisConfigurationException(string message) : base(message)
        {
        }

        public RicisConfigurationException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected RicisConfigurationException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}