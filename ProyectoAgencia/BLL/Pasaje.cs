using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC; 

namespace BLL
{
    public class Pasaje
    {
        public string RUT { get; set; }
        public decimal NUMERO_ASIENTO { get; set; }
        public System.DateTime HORA { get; set; }
        public System.DateTime FECHA { get; set; }

        public bool insert()
        {
            try
            {
                PASAJE pj = new PASAJE();

                pj.RUT = this.RUT;
                pj.NUMERO_ASIENTO = this.NUMERO_ASIENTO;
                pj.HORA = this.HORA;
                pj.FECHA = this.FECHA;

                Comun.modeloAerolinea.PASAJE.Add(pj);
                Comun.modeloAerolinea.SaveChanges();

                return true;

            }catch(Exception ex){
                return false;
            }
        }
    }
}
