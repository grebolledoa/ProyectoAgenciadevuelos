using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

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

        public bool insertar()
        {
            try
            {
                CLIENTE cl = new CLIENTE();

                cl.RUT = this.RUT;
                cl.NOMBRE = this.NOMBRE;
                cl.DIRECCION = this.DIRECCION;
                cl.TELEFONO = this.TELEFONO;
                cl.EMAIL = this.EMAIL;
                cl.TELEFONO_EMERGENCIA = this.TELEFONO_EMERGENCIA;
                cl.EMAIL_EMERGENCIA = this.EMAIL_EMERGENCIA;

                Comun.modeloAerolinea.CLIENTE.Add(cl);
                Comun.modeloAerolinea.SaveChanges();
                return true;
            }
            catch(Exception ex){
                return false;
            }
        }

        public bool update()
        {
            try
            {
                CLIENTE cl = Comun.modeloAerolinea.CLIENTE.First(
                        clt => clt.RUT == this.RUT
                    );

                cl.NOMBRE = this.NOMBRE;
                cl.DIRECCION = this.DIRECCION;
                cl.TELEFONO = this.TELEFONO;
                cl.EMAIL = this.EMAIL;
                cl.EMAIL_EMERGENCIA = this.EMAIL_EMERGENCIA;
                cl.TELEFONO_EMERGENCIA = this.TELEFONO_EMERGENCIA;

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
                CLIENTE cl = Comun.modeloAerolinea.CLIENTE.First(
                        clt => clt.RUT == this.RUT
                    );

                Comun.modeloAerolinea.CLIENTE.Remove(cl);
                Comun.modeloAerolinea.SaveChanges();
                return true; 
            }catch(Exception ex){
                return false; 
            }
        }
    }
}
