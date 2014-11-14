using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public class Cliente
    {
        public string RUT { get; set; }
        public string NOMBRE { get; set; }
        public string DIRECCION { get; set; }
        public decimal TELEFONO { get; set; }
        public string EMAIL { get; set; }
        public decimal TELEFONO_EMERGENCIA { get; set; }
        public string EMAIL_EMERGENCIA { get; set; }
    }
}
