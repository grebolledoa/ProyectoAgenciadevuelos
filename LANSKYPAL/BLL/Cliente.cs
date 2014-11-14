﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DALC;

namespace BLL
{
    public class Cliente
    {
        public string rut { get; set; }
        public string nombre { get; set; }
        public string direccion { get; set; }
        public decimal telefono { get; set; }
        public decimal telefono_emergencia { get; set; }
        public string email { get; set; }
        public string email_emergencia { get; set; }

        public bool insert()
        {
            try
            {
                CLIENTE cl = new CLIENTE();

                cl.RUT = this.rut;
                cl.NOMBRE = this.nombre;
                cl.DIRECCION = this.direccion;
                cl.TELEFONO = this.telefono;
                cl.TELEFONO_EMERGENCIA = this.telefono_emergencia;
                cl.EMAIL = this.email;
                cl.EMAIL_EMERGENCIA = this.email_emergencia;

                Comun.modeloAerolinea.CLIENTE.Add(cl);

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
                CLIENTE cl = Comun.modeloAerolinea.CLIENTE.First(
                      cll => cll.RUT == this.rut
                  );

                cl.NOMBRE = this.nombre;
                cl.DIRECCION = this.direccion;
                cl.TELEFONO = this.telefono;
                cl.TELEFONO_EMERGENCIA = this.telefono_emergencia;
                cl.EMAIL = this.email;
                cl.EMAIL_EMERGENCIA = this.email_emergencia;

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
                        cll => cll.RUT == this.rut
                    );

                Comun.modeloAerolinea.CLIENTE.Remove(cl);

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
