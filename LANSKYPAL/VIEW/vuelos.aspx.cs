using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VIEW
{
    public partial class vuelos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.pnl_modificar.CssClass = "hidden";
            this.pnl_modificar.DataBind();
            this.pnl_eliminar.CssClass = "hidden";
            this.pnl_eliminar.DataBind();
            this.pnl_agregar.CssClass = "";
            this.pnl_agregar.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.pnl_agregar.CssClass = "hidden";
            this.pnl_agregar.DataBind();
            this.pnl_eliminar.CssClass = "hidden";
            this.pnl_eliminar.DataBind();
            this.pnl_modificar.CssClass = "";
            this.pnl_modificar.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            this.pnl_agregar.CssClass = "hidden";
            this.pnl_agregar.DataBind();
            this.pnl_eliminar.CssClass = "";
            this.pnl_eliminar.DataBind();
            this.pnl_modificar.CssClass = "hidden";
            this.pnl_modificar.DataBind();
        }
    }
}