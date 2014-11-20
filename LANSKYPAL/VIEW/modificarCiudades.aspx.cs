using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW
{
    public partial class modificarCiudades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.nombreRequired.Enabled = false;
        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            string id = this.ddl_ID.SelectedValue.ToString();

            if (id.Length > 0)
            {
                Ciudad x = new Ciudad();

                x.id_ciudad = id;

                x = x.ciudad();

                tbNombre.Text = x.nombre_ciudad;

                this.ddl_ID.Enabled = false;

                this.nombreRequired.Enabled = true;

                this.ddl_ID.DataBind();
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Ciudad x = new Ciudad();

            x.id_ciudad = this.ddl_ID.SelectedValue.ToString();
            x.nombre_ciudad = tbNombre.Text;
            try
            {
                x.update();
                Response.Redirect("modificarCiudades.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("modificarCiudades.aspx");
            }
        }
    }
}