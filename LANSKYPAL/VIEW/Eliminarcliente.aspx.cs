using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW
{
    public partial class Eliminarcliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string rut = this.ddl_rut.SelectedValue.ToString();

            if (rut.Length > 0)
            {
                Cliente x = new Cliente();

                x.rut = rut;

                x.delete();

                this.ddl_rut.DataBind();
            }
        }
    }
}