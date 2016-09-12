using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.MODEL
{
    public class Cliente
    {
        public int id { get; set; }
        public string nome { get; set; }
        public string endereco { get; set; }
        public string cidade { get; set; }
        public string estado { get; set; }
        public DateTime aniversario { get; set; }
    }
}