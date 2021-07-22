namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step
{
    public interface IReader<out T>
    {
        T Read();
    }
}