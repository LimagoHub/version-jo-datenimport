using System.Collections.Generic;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.CrudRepository;
using Microsoft.EntityFrameworkCore;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.Database.Repository
{
    public class RepositoryInserter<E, C> : IWriter<IList<E>>
        where E : class
        where C : DbContext, new()
    {
        public void Write(IList<E> t)
        {
            using (DbContext context = new C())
            {
                ICrudRepository<E> repo = new CrudRepository<E>(context);
                foreach (var item in t) repo.Insert(item);
                repo.Save();
            }
        }
    }
}