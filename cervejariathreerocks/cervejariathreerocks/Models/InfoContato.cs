using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace cervejariathreerocks.Models
{
    public class InfoContato
    {
        public int id { get; set; }
        public string nome { get; set; }
        public string email { get; set; }
        public string estadoCidade { get; set; }
        public string estiloThreeRocks { get; set; }
        public string qualidade { get; set; }
        public string mensagem { get; set; }
    }
}