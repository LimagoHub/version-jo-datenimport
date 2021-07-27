using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step
{
    public interface IStep: IDisposable
    {
        Dictionary<string, object> JobParameters { get; }

        void Init();
        void Execute();
       
    }
}