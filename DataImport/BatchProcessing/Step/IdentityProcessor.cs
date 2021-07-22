namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step
{
    public class IdentityProcessor<T> : IProcessor<T, T>
    {
        public T Process(T p)
        {
            return p;
        }
    }
}