using System;
using System.IO;
using System.Text;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step
{
    public class TextToArchivedFileReader : IReader<ArchivedFile>
    {
        private readonly DateTime betrachtungstag;
        private readonly FileInfo fileInfo;
        private readonly string useCase;

        public TextToArchivedFileReader(string useCase, DateTime betrachtungstag, FileInfo fileInfo)
        {
            this.useCase = useCase;
            this.betrachtungstag = betrachtungstag;
            this.fileInfo = fileInfo;
        }

        /// <summary>
        ///     Konstruktor mit vollqualifiziertem Dateinamen
        /// </summary>
        /// <param name="useCase"></param>
        /// <param name="betrachtungstag"></param>
        /// <param name="fileName">Vollqualifizierter Dateiname</param>
        public TextToArchivedFileReader(string useCase, DateTime betrachtungstag, string fileName)
        {
            this.useCase = useCase;
            this.betrachtungstag = betrachtungstag;
            fileInfo = new FileInfo(fileName);
        }

        public ArchivedFile Read()
        {
            if (!fileInfo.Exists) throw new IOException($"File {fileInfo.FullName} does not exist.");
            string readContents;
            using (var streamReader = new StreamReader(fileInfo.FullName, Encoding.UTF8))
            {
                readContents = streamReader.ReadToEnd();
            }

            return new ArchivedFile
            {
                UseCase = useCase,
                Betrachtungstag = betrachtungstag,
                FileName = fileInfo.Name,
                FileFormat = fileInfo.Extension,
                FileContents = readContents
            };
        }
    }
}