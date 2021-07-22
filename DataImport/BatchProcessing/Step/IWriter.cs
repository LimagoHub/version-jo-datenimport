namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step
{
    public interface IWriter<in T>
    {
        void Write(T t);
    }
}