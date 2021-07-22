using System;

namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step
{
    public interface IStep: IDisposable
    {
        void Init();
        void Execute();
       
    }
}