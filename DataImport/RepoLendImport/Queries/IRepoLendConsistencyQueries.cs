using BBk.Rc1.Ricis.Database.Entities;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries
{
    public interface IRepoLendConsistencyQueries
    {
        TblRepoLend FindByRepoLendNo(int repoLendNo);
    }
}