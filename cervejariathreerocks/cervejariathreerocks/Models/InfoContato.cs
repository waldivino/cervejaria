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
        public string estado { get; set; }
        public string cidade { get; set; }
        public string estiloThreeRocks { get; set; }
    }
}