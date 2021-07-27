using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step
{
    public abstract class AbstractStep : IStep
    {
        public Dictionary<string, object> JobParameters { get; set; }

        public AbstractStep()
        {

        }

        public AbstractStep(Dictionary<string, object> jobParameters)
        {
            JobParameters = jobParameters;
        }

        public virtual void Init()
        {
            // Ok
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            // Cleanup
        }

        public abstract void Execute();
    }
}