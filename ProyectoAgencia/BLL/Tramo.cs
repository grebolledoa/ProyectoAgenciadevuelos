using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Tramo
    {
        public System.DateTime HORA { get; set; }
        public decimal ID_CIUDAD { get; set; }
        public decimal valor { get; set; }

        public bool insert()
        {
            try
            {
                TRAMO tr = new TRAMO();

                tr.HORA = this.HORA;
                tr.ID_CIUDAD = this.ID_CIUDAD;
                tr.valor = this.valor;

                Comun.modeloAerolinea.TRAMO.Add(tr);

                Comun.modeloAerolinea.SaveChanges();

                return true;
            }catch(Exception ex){
                return false;
            }
        }

        public bool update()
        {
            try
            {
                TRAMO tr = Comun.modeloAerolinea.TRAMO.First(
                        trm => trm.HORA == this.HORA && trm.ID_CIUDAD == this.ID_CIUDAD
                    );

                tr.valor = this.valor;

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
                TRAMO tr = Comun.modeloAerolinea.TRAMO.First(
                        trm => trm.HORA == this.HORA && trm.ID_CIUDAD == this.ID_CIUDAD
                    );


                Comun.modeloAerolinea.TRAMO.Remove(tr);
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
