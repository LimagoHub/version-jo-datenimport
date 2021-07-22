using System;
using System.Collections.Generic;
using System.IO;

namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.FileHandling
{
    public interface IInitImportFileService
    {
        IList<FileInfo> GetFiles(DateTime betrachtungstag);
    }
}