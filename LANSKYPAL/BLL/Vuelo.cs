﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Vuelo
    {
        public string id_vuelo { get; set; }
        public System.TimeSpan HORA { get; set; }
        public string id_ciudad_destino { get; set; }
        public string id_ciudad_origen { get; set; }
        public decimal valor { get; set; }

        public bool insert()
        {
            try
            {
                VUELO vl = new VUELO();

                vl.ID_VUELO = this.id_vuelo;
                vl.HORA = this.HORA;
                vl.ID_CIUDAD = this.id_ciudad_destino;
                vl.CIU_ID_CIUDAD = this.id_ciudad_origen;
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
						vlo => vlo.ID_VUELO == this.id_vuelo && vlo.HORA == this.HORA
                    );

             
                vl.ID_CIUDAD = this.id_ciudad_destino;
                vl.CIU_ID_CIUDAD = this.id_ciudad_origen;
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
						vlo => vlo.ID_VUELO == this.id_vuelo && vlo.HORA == this.HORA
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

        public static Vuelo buscar(System.TimeSpan hora, string id)
        {
            try
            {
                VUELO vl = Comun.modeloAerolinea.VUELO.First(
                       vlo => vlo.ID_VUELO == id && vlo.HORA == hora
                );

                Vuelo v = new Vuelo();
                v.id_vuelo = vl.ID_VUELO;
                v.HORA = vl.HORA;
                v.id_ciudad_origen = vl.ID_CIUDAD;
                v.id_ciudad_destino = vl.CIU_ID_CIUDAD;
                v.valor = vl.VALOR;

                return v;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
