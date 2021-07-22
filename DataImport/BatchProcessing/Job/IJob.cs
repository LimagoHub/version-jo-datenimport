using System;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;

namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Job
{
    public interface IJob: IDisposable
    {
        void AddStep(IStep step);
        void RemoveStep(IStep step);
        void RunAllSteps();
        
    }
}