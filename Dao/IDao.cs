using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamenCSharp.Dao
{
    internal interface IDao<T>
    {
        int insert(T obj);
        int update(T obj);
        int delete(int id);
        T findById(int id);
    }
}
