using System.Collections.Generic;
using System.Linq;
using BBk.Rc1.Ricis.Database.Contexts;
using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.Database.Repository;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries
{
    public class RepoLendConsistencyQueries : IRepoLendConsistencyQueries
    {
        private readonly List<TblRepoLend> tblRepoLends;

        public RepoLendConsistencyQueries()
        {
            tblRepoLends = new RepositoryReader<TblRepoLend, RicisEuroContext>().Read().ToList();
        }

        public TblRepoLend FindByRepoLendNo(int repoLendNo)
        {
            return tblRepoLends.Find(x => x.RepoLendNo == repoLendNo);
        }
    }
}