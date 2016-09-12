using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Locadora.Camadas.MODEL
{
    public class Filme
    {
        public int id { get; set; }
        public string titulo { get; set; }
        public string genero { get; set; }
        public int quantidade { get; set; }
        public float valor { get; set; }
    }
}
