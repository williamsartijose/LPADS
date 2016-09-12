using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.BLL
{
    public class Filme
    {
        public List<MODEL.Filme> Select()
        {
            DAL.Filme dalFilme = new DAL.Filme();
            return dalFilme.Select();
        }

        public MODEL.Filme SelectById(int id)
        {
            DAL.Filme dalFilme = new DAL.Filme();
            return dalFilme.SelectById(id);
        }

        public void Insert(MODEL.Filme filme)
        {
            DAL.Filme dalFilme = new DAL.Filme();
            //
            dalFilme.Insert(filme);
        }

        public void Update(MODEL.Filme filme)
        {
            DAL.Filme dalFilme = new DAL.Filme();
            dalFilme.Update(filme);
        }

        public void Delete(MODEL.Filme filme)
        {
            DAL.Filme dalFilme = new DAL.Filme();

            dalFilme.Delete(filme);
        }
    }
}
