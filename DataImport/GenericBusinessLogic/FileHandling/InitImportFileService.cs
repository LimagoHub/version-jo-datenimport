using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Exceptions;

namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.FileHandling
{
    public class InitImportFileService : IInitImportFileService
    {
        protected readonly IDataImportConfiguration config;
        protected readonly string useCase;

        public InitImportFileService(IDataImportConfiguration config, string useCase)
        {
            this.config = config;
            this.useCase = useCase;
        }

        public IList<FileInfo> GetFiles(DateTime betrachtungstag)
        {
            var dir = new DirectoryInfo(config.GetValue(useCase, "Path"));
            if (!dir.Exists) throw new DataImportException($"Verzeichnis {dir.FullName} existiert nicht.");
            var files = dir.EnumerateFiles().ToList();
            var fileNamePattern = string.Format(config.GetValue(useCase, "FileNameFormat"), betrachtungstag);
            return files.FindAll(file => Regex.IsMatch(file.Name, fileNamePattern));
        }
    }
}