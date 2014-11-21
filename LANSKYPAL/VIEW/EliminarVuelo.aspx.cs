using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW
{
    public partial class EliminarVuelo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ddlHora.Enabled = false;
        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            this.ddlHora.Enabled = true;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Vuelo v = new Vuelo();
            v.id_vuelo = ddlID.SelectedValue.ToString();
            v.HORA = System.TimeSpan.Parse(ddlHora.SelectedValue.ToString());

            if (v.delete())
            {
                Response.Redirect("EliminarVuelo.aspx");
            }
            else
            {
                Response.Write("<script>window.alert('Vuelo no Eliminado');</script>");
            }
        }
    }
}