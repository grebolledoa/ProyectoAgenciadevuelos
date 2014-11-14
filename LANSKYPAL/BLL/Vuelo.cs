using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Vuelo
    {
        public string id_vuelo { get; set; }
        public System.DateTime hora { get; set; }
        public string id_ciudad_destino { get; set; }
        public string id_ciudad_origen { get; set; }
        public decimal valor { get; set; }

        public bool insert()
        {
            try
            {
                VUELO vl = new VUELO();

                vl.ID_VUELO = this.id_vuelo;
                vl.HORA = this.hora;
                vl.ID_CIUDAD_DESTINO = this.id_ciudad_destino;
                vl.ID_CIUDAD_ORIGEN = this.id_ciudad_origen;
                vl.VALOR = this.valor;

                Comun.modeloAerolinea.VUELO.Add(vl);
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
                VUELO vl = Comun.modeloAerolinea.VUELO.First(
						vlo => vlo.ID_VUELO == this.id_vuelo && vlo.HORA == this.hora
                    );

                vl.ID_CIUDAD_DESTINO = this.id_ciudad_destino;
                vl.ID_CIUDAD_ORIGEN = this.id_ciudad_origen;
                vl.VALOR = this.valor;

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
						vlo => vlo.ID_VUELO == this.id_vuelo && vlo.HORA == this.hora
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
