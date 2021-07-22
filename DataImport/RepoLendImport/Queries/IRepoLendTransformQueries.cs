namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries
{
    public interface IRepoLendTransformQueries
    {
        string GetFileKey(string fileType, string keyName);
        int? GetCounterpartFromMapping(string system, string key);
        string GetPropertyValueByCounterparty(int counterpartyNo, string propertyName);
        int? GetPortfolioNoFromKey(string keyName, string keyValue);
        int? GetInstrumentNoByIsin(string isin);
    }
}