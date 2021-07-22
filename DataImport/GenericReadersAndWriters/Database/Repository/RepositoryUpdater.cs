using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step;
using BBk.Rc1.Ricis.SharedLibraries.CrudRepository;
using Microsoft.EntityFrameworkCore;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.Database.Repository
{
    public class RepositoryUpdater<E, C> : IWriter<IList<Tuple<E, object>>>
        where E : class
        where C : DbContext, new()
    {
        public void Write(IList<Tuple<E, object>> t)
        {
            using (DbContext context = new C())
            {
                ICrudRepository<E> repo = new CrudRepository<E>(context);
                foreach (var tuple in t) repo.Update(tuple.Item1, tuple.Item2);
                repo.Save();
            }
        }
    }
}