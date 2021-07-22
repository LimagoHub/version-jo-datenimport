using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File
{
    public abstract class AbstractFileWriter<T> : IWriter<T>
    {
        protected AbstractFileWriter(IStreamWriterResource resource)
        {
            Resource = resource;
        }

        public IStreamWriterResource Resource { get; }

        public abstract void Write(T t);
    }
}