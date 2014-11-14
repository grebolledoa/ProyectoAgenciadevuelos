using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Ciudad
    {
        public string NOMBRE { get; set; }
        public decimal ID_CIUDAD { get; set; }

        public bool crear()
        {
            try
            {
                CIUDAD cd = new CIUDAD();
                cd.NOMBRE = this.NOMBRE;
                cd.ID_CIUDAD = this.ID_CIUDAD;

                Comun.modeloAerolinea.CIUDAD.Add(cd);
                Comun.modeloAerolinea.SaveChanges();
               
                return true;
            }catch(Exception ex){
                return false;
            }
        }

        public bool modificar()
        {
            try
            {
                CIUDAD ciudad = Comun.modeloAerolinea.CIUDAD.First(
                        cd => cd.ID_CIUDAD == this.ID_CIUDAD
                    );

                ciudad.NOMBRE = this.NOMBRE;

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
                CIUDAD cd = Comun.modeloAerolinea.CIUDAD.First(
                        cid => cid.ID_CIUDAD == this.ID_CIUDAD
                    );

                Comun.modeloAerolinea.CIUDAD.Remove(cd);
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
