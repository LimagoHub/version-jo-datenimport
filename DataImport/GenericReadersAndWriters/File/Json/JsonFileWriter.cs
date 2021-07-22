using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources;
using Newtonsoft.Json;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Json
{
    public class JsonFileWriter<T> : AbstractFileWriter<T>
        where T : class
    {
        public JsonFileWriter(IStreamWriterResource resource) : base(resource)
        {
        }

        public override void Write(T t)
        {
            using (var streamWriter = Resource.GetStreamWriter())
            {
                new JsonSerializer().Serialize(streamWriter, t, typeof(T));
            }
        }
    }
}