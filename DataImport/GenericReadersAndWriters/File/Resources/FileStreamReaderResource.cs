using System.IO;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources
{
    public class FileStreamReaderResource : IStreamReaderResource
    {
        public FileStreamReaderResource(FileInfo fileInfo)
        {
            FileInfo = fileInfo;
        }

        public FileStreamReaderResource(string fileName)
        {
            FileInfo = new FileInfo(fileName);
        }

        public FileInfo FileInfo { get; set; }

        public StreamReader GetStreamReader()
        {
            return new StreamReader(FileInfo.FullName);
        }
    }
}