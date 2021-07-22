using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.Console
{
    public class ConsoleWriter<T> : IWriter<T>
    {
        public void Write(T t)
        {
            new JsonSerializer
                {
                    Formatting = Formatting.Indented
                }
                .Serialize(System.Console.Out, t, typeof(T));
        }
    }
}