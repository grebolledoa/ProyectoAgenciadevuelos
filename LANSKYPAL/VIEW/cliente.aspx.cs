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
            Cliente c = new Cliente();
            c.nombre = this.tbNombre.Text;
            c.direccion = this.tbDireccion.Text;
            c.telefono = int.Parse(this.tbTelefono.Text);
            c.telefono_emergencia = int.Parse(this.tbTelefonoEmergencia.Text);
            c.email = this.tbEmail.Text;
            c.email_emergencia = this.tbEmailEmergencia.Text;
            c.rut = this.tbRut.Text.Replace(".", "");

            c.insert();

            Response.Redirect("cliente.aspx");  
        }

        protected void btnAgregar1_Click(object sender, EventArgs e)
        {
            this.Panel1.CssClass = " ";
            this.Panel1.DataBind();
        }



    }
}