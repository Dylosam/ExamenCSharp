using ExamenCSharp.Dao;
using ExamenCSharp.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamenCSharp.Fabrique
{
    internal class Fabrique
    {
        public static IService getInstanceService()
        {
            return new Service()

            {
                CompteDao = new CompteDao(),
                ClientDao = new ClientDao(),
                EpargneDao = new EpargneDao(),
                ChecqueDao = new ChecqueDao(),

            };
        }
    }
}
