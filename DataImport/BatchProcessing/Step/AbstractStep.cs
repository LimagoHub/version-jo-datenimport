using System;

namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step
{
    public abstract class AbstractStep : IStep
    {
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