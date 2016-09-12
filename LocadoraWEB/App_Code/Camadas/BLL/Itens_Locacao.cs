using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.BLL
{
    public class Itens_Locacao
    {
        public List<MODEL.Itens_Locacao> Select()
        {
            DAL.Itens_Locacao dalItLoc = new DAL.Itens_Locacao();

            return dalItLoc.Select();
        }

        public List<MODEL.Itens_Locacao> SelectByLocacao(int idLocacao)
        {
            DAL.Itens_Locacao dalItLoc = new DAL.Itens_Locacao();

            return dalItLoc.SelectByLocacao(idLocacao);
        }

        public bool Insert(MODEL.Itens_Locacao item_locacao)
        {
            DAL.Itens_Locacao dalItLoc = new DAL.Itens_Locacao();
            MODEL.Filme filme = new MODEL.Filme();
            BLL.Filme bllFilme = new BLL.Filme();
            
            filme = bllFilme.SelectById(item_locacao.filme_id);
            if (filme.quantidade > 0) {
                filme.quantidade = filme.quantidade - 1;
                bllFilme.Update(filme);

                dalItLoc.Insert(item_locacao);
                return true;
            }
            return false; 
        }

        public void Update(MODEL.Itens_Locacao item_locacao)
        {
            DAL.Itens_Locacao dalItLoc = new DAL.Itens_Locacao();
            dalItLoc.Update(item_locacao);
        }

        public void Delete(MODEL.Itens_Locacao item_locacao)
        {
            DAL.Itens_Locacao dalItLoc = new DAL.Itens_Locacao();

            dalItLoc.Delete(item_locacao);
        }
    }
}
