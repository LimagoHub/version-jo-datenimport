using System.IO;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources
{
    public class FileStreamWriterResource : IStreamWriterResource
    {
        public FileStreamWriterResource(FileInfo fileInfo)
        {
            FileInfo = fileInfo;
        }

        public FileStreamWriterResource(string fileName)
        {
            FileInfo = new FileInfo(fileName);
        }

        public FileInfo FileInfo { get; set; }

        public StreamWriter GetStreamWriter()
        {
            return new StreamWriter(FileInfo.FullName);
        }
    }
}