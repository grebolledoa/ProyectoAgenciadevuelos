using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Ciudad
    {
        public string id_ciudad { get; set; }
        public string nombre_ciudad { get; set; }

        public bool insert()
        {
            try
            {
                CIUDAD cd = new CIUDAD();

                cd.ID_CIUDAD = this.id_ciudad;
                cd.NOMBRE_CIUDAD = this.nombre_ciudad;

                Comun.modeloAerolinea.CIUDAD.Add(cd);
                Comun.modeloAerolinea.SaveChanges();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool update()
        {
            try
            {
                CIUDAD cd = Comun.modeloAerolinea.CIUDAD.First(
                       cdd => cdd.ID_CIUDAD == this.id_ciudad
                    );

                cd.NOMBRE_CIUDAD = this.nombre_ciudad;

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
                        cdd => cdd.ID_CIUDAD == this.id_ciudad
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
