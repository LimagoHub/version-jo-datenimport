using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File
{
    public abstract class AbstractFileReader<T> : IReader<T>
    {
        protected AbstractFileReader(IStreamReaderResource resource)
        {
            Resource = resource;
        }

        public IStreamReaderResource Resource { get; }

        public abstract T Read();
    }
}