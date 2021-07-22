namespace BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.FileHandling
{
    public interface IDataImportConfiguration
    {
        string GetValue(string useCase, string parameter);
    }
}