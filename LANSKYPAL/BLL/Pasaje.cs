using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Pasaje
    {
        public string id_vuelo { get; set; }
        public System.TimeSpan HORA { get; set; }
        public decimal n_asiento { get; set; }
        public string rut { get; set; }
        public System.DateTime fecha { get; set; }

        public bool insert()
        {
            try
            {
                PASAJE ps = new PASAJE();

                ps.ID_VUELO = this.id_vuelo;
                ps.HORA = this.HORA;
                ps.N_ASIENTO = this.n_asiento;
                ps.RUT = this.rut;
                ps.FECHA = this.fecha;

                Comun.modeloAerolinea.PASAJE.Add(ps);

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
                PASAJE ps = Comun.modeloAerolinea.PASAJE.First(
                        pss => pss.ID_VUELO == this.id_vuelo && pss.HORA == this.HORA && pss.N_ASIENTO == this.n_asiento
                    );

                ps.RUT = this.rut;

                ps.FECHA = this.fecha;

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
                PASAJE ps = Comun.modeloAerolinea.PASAJE.First(
                            pss => pss.ID_VUELO == this.id_vuelo && pss.HORA == this.HORA && pss.N_ASIENTO == this.n_asiento
                        );

                Comun.modeloAerolinea.PASAJE.Remove(ps);
                Comun.modeloAerolinea.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        private List<Pasaje> listado(List<PASAJE> pasajeDALC)
        {
            List<Pasaje> pasaje = new List<Pasaje>();

            foreach(PASAJE pj in pasajeDALC){
                Pasaje p = new Pasaje();

                p.id_vuelo = pj.ID_VUELO;
                p.HORA = pj.HORA; 
                p.fecha = pj.FECHA; 
                p.n_asiento = pj.N_ASIENTO;
                p.rut = pj.RUT;

                pasaje.Add(p);
            }

            return pasaje;
        }

        public List<Pasaje> listarTodo()
        {
            var pasajes = Comun.modeloAerolinea.PASAJE;

            return listado(pasajes.ToList());
        }

    }
}
