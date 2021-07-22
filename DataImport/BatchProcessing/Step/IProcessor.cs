namespace BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step
{
    public interface IProcessor<in P, out R>
    {
        R Process(P p);
    }
}