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

                this.RequiredFieldValidator8.Enabled = false;
                this.RequiredFieldValidator8.DataBind();
                this.RequiredFieldValidator9.Enabled = false;
                this.RequiredFieldValidator9.DataBind();
                this.RequiredFieldValidator10.Enabled = false;
                this.RequiredFieldValidator10.DataBind();
                this.RangeValidator3.Enabled = false;
                this.RangeValidator3.DataBind();
                this.RequiredFieldValidator11.Enabled = false;
                this.RequiredFieldValidator11.DataBind();
                this.RangeValidator4.Enabled = false;
                this.RangeValidator4.DataBind();
                this.RequiredFieldValidator12.Enabled = false;
                this.RequiredFieldValidator12.DataBind();
                this.RegularExpressionValidator3.Enabled = false;
                this.RegularExpressionValidator3.DataBind();
                this.RequiredFieldValidator13.Enabled = false;
                this.RequiredFieldValidator13.DataBind();
                this.RegularExpressionValidator4.Enabled = false;
                this.RegularExpressionValidator4.DataBind();

        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            Cliente c = Cliente.buscar(this.ddl_rut.SelectedValue.ToString());
            if (this.ddl_rut.Items.Count > 0)
            {
                this.mtbDireccion.Text = c.direccion;
                this.mtbTelefono.Text = c.telefono.ToString();
                this.mtbTelefonoEmergencia.Text = c.telefono_emergencia.ToString();
                this.mtbEmail.Text = c.email;
                this.mtbEmailEmergencia.Text = c.email_emergencia;
                this.mtbNombre.Text = c.nombre;
                this.ddl_rut.Enabled = false;
                this.RequiredFieldValidator8.Enabled = true;
                this.RequiredFieldValidator8.DataBind();
                this.RequiredFieldValidator9.Enabled = true;
                this.RequiredFieldValidator9.DataBind();
                this.RequiredFieldValidator10.Enabled = true;
                this.RequiredFieldValidator10.DataBind();
                this.RangeValidator3.Enabled = true;
                this.RequiredFieldValidator11.Enabled = true;
                this.RangeValidator4.Enabled = true;
                this.RequiredFieldValidator12.Enabled = true;
                this.RegularExpressionValidator3.Enabled = true;
                this.RequiredFieldValidator13.Enabled = true;
                this.RegularExpressionValidator4.Enabled = true;
            }
            
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Cliente c = new Cliente();

            c.rut = this.ddl_rut.SelectedValue.ToString();
            if (c.rut.Length > 0)
            {
                c.nombre = this.mtbNombre.Text;
                c.direccion = this.mtbDireccion.Text;
                c.telefono = int.Parse(this.mtbTelefono.Text);
                c.telefono_emergencia = int.Parse(this.mtbTelefonoEmergencia.Text);
                c.email = this.mtbEmail.Text;
                c.email_emergencia = this.mtbEmailEmergencia.Text;

                c.update();
            }
            Response.Redirect("ModificarCliente.aspx");
        }
    }
}