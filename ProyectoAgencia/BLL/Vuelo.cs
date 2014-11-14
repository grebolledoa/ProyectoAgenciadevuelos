using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Vuelo
    {
        public decimal ID_VUELO { get; set; }
        public System.DateTime HORA { get; set; }

        public bool insert()
        {
            try
            {
                VUELO vl = new VUELO();

                vl.HORA = this.HORA;
                vl.ID_VUELO = this.ID_VUELO;


                Comun.modeloAerolinea.VUELO.Add(vl);
                Comun.modeloAerolinea.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool delete()
        {
            try
            {
                VUELO vl = Comun.modeloAerolinea.VUELO.First(
                        vlo => vlo.HORA == this.HORA
                    );

                Comun.modeloAerolinea.VUELO.Remove(vl);
                Comun.modeloAerolinea.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
