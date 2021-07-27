using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;

namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Job
{
    public interface IJob: IDisposable
    {
        
        Dictionary<string, object> JobParameters { get; set; }
        
        void AddStep(IStep step);
        void RemoveStep(IStep step);
        void RunAllSteps();
        
    }
}