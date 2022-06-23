using ExamenCSharp.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamenCSharp.Service
{
    internal class Service : IService
    {
        private ICompteDao compteDao;
        private IClientDao clientDao;
        private IEpargneDao epargneDao;
        private IChecqueDao checqueDao;
       
        public Service()
        {
        }

        public Service(ICompteDao compteDao, IClientDao clientDao, IEpargneDao EpargneDao, IChecqueDao ChecqueDao)
        {
            this.compteDao = compteDao;
            this.clientDao = clientDao;
            this.epargneDao = epargneDao;
            this.checqueDao = checqueDao;
            
        }

        public ICompteDao CompteDao { get => compteDao; set => compteDao = value; }
        public IClientDao ClientDao { get => clientDao; set => clientDao = value; }
        public IEpargneDao EpargneDao { get => epargneDao; set => epargneDao = value; }
        public IChecqueDao ChecqueDao { get => checqueDao; set => checqueDao = value; }
    }
}
