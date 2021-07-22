using System;
using System.Linq;
using BBk.Rc1.Ricis.Database.Contexts;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services
{
    public class RepoLendCheckImportDateService
    {
        public bool IsDataInDatabase(DateTime betrachtungstag)
        {
            using (var context = new RicisEuroContext())
            {
                return context.TblRepoLend.FirstOrDefault(x => x.TradeDate == betrachtungstag) != null;
            }
        }
    }
}