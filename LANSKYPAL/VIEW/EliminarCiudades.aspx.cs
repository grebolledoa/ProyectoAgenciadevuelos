using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW
{
    public partial class EliminarCiudades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Ciudad c = new Ciudad();

            if(this.ddl_ID.Items.Count > 0){
                c.id_ciudad = this.ddl_ID.SelectedValue.ToString();
                try
                {
                    c.delete();
                    Response.Redirect("EliminarCiudades.aspx");
                }
                catch (Exception ex)
                {
                    Response.Redirect("EliminarCiudades.aspx");
                }

              
            }

        }
    }
}