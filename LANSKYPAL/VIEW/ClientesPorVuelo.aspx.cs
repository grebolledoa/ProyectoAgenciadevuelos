using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class ClientesPorVuelo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ddlHora.Enabled = false;
            this.btnAgregar.Enabled = false;
        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            this.ddlHora.Enabled = true;
            this.btnAgregar.Enabled = true;
            this.ddlID.Enabled = false;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            this.GridView1.DataSource = SqlDataSource1;
            this.GridView1.DataBind();
            this.ddlID.Enabled = true;

        }
    }
}