using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;

namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Job
{
    public abstract class AbstractJob : IJob
    {
        protected readonly List<IStep> _steps = new List<IStep>();

        public Dictionary<string, object> JobParameters { get; set; }

        public AbstractJob()
        {
            JobParameters = new Dictionary<string, object>();
        }
        public AbstractJob(Dictionary<string, object> jobParameters)
        {
            JobParameters = jobParameters;
        }


        public void AddStep(IStep step)
        {
            _steps.Add(step);
        }

        public void RemoveStep(IStep step)
        {
            _steps.Remove(step);
        }

        public virtual void RunAllSteps()
        {
            foreach (var step in _steps)
            {
                step.Init();
                step.Execute();
                step.Dispose();
            }
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
    }
}