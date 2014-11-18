using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW
{
    public partial class cliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

                Cliente cl = new Cliente();

                cl.rut = tbRut.Text.Replace(".","");
                cl.nombre = tbTelefono.Text;
                cl.direccion = tbDireccion.Text;
                cl.email = tbEmail.Text;
                cl.email_emergencia = tbEmailEmergencia.Text;
                cl.telefono = Convert.ToInt32(tbTelefono.Text);
                cl.telefono_emergencia = Convert.ToInt32(tbTelefonoEmergencia.Text);

                
                
        }
    }
}