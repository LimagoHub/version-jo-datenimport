using System.Collections.Generic;

namespace BBk.Rc1.Ricis.SharedLibraries.CrudRepository
{
    public interface ICrudRepository<E>
        where E : class
    {
        IEnumerable<E> GetAll();
        E GetById(params object[] id);
        void Insert(E obj);
        void Update(E obj);
        void Update(E obj, params object[] id);
        void Delete(params object[] id);
        void DeleteAll();
        void Save();
    }
}