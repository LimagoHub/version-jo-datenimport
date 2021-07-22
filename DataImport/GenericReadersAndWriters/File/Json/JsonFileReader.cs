using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Json
{
    public class JsonFileReader<T> : AbstractFileReader<T>
        where T : class
    {
        public JsonFileReader(IStreamReaderResource resource) : base(resource)
        {
        }

        public override T Read()
        {
            using (var streamReader = Resource.GetStreamReader())
            {
                return (T) new JsonSerializer().Deserialize(streamReader, typeof(T));
            }
        }
    }
}