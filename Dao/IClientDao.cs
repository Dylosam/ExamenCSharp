using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamenCSharp.Dao
{
    internal interface IClientDao: IDao<Client>
    {
        List<Client> findAll();
    }
}
