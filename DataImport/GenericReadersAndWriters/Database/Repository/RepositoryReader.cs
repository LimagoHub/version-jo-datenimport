using System.Collections.Generic;
using System.Linq;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.CrudRepository;
using Microsoft.EntityFrameworkCore;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.Database.Repository
{
    public class RepositoryReader<E, C> : IReader<IList<E>>
        where E : class
        where C : DbContext, new()
    {
        public IList<E> Read()
        {
            using (DbContext context = new C())
            {
                ICrudRepository<E> repo = new CrudRepository<E>(context);
                return repo.GetAll().ToList();
            }
        }
    }
}