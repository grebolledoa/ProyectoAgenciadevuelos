using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW
{
    public partial class ventas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void cliente_Click(object sender, EventArgs e)
        {
            Response.Redirect("cliente.aspx");
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Now.AddMonths(1))
            {
                e.Day.IsSelectable = false;

            }
        }
    }
}