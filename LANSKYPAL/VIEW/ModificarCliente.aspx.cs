using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW.Clientes
{
    public partial class Modificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            Cliente c = Cliente.buscar(this.ddl_rut.SelectedValue.ToString());
            this.mtbDireccion.Text = c.direccion;
            this.mtbTelefono.Text = c.telefono.ToString();
            this.mtbTelefonoEmergencia.Text = c.telefono_emergencia.ToString();
            this.mtbEmail.Text = c.email;
            this.mtbEmailEmergencia.Text = c.email_emergencia;
            this.mtbNombre.Text = c.nombre;
            this.ddl_rut.Enabled = false;
            this.RequiredFieldValidator8.Enabled = true;
            this.RequiredFieldValidator9.Enabled = true;
            this.RequiredFieldValidator10.Enabled = true;
            this.RangeValidator3.Enabled = true;
            this.RequiredFieldValidator11.Enabled = true;
            this.RangeValidator4.Enabled = true;
            this.RequiredFieldValidator12.Enabled = true;
            this.RegularExpressionValidator3.Enabled = true;
            this.RequiredFieldValidator13.Enabled = true;
            this.RegularExpressionValidator4.Enabled = true;

            
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Cliente c = new Cliente();

            c.rut = this.ddl_rut.SelectedValue.ToString();
            c.nombre = this.mtbNombre.Text;
            c.direccion = this.mtbDireccion.Text;
            c.telefono = int.Parse(this.mtbTelefono.Text);
            c.telefono_emergencia = int.Parse(this.mtbTelefonoEmergencia.Text);
            c.email = this.mtbEmail.Text;
            c.email_emergencia = this.mtbEmailEmergencia.Text;

            c.update();

            Response.Redirect("ModificarCliente.aspx");
        }
    }
}