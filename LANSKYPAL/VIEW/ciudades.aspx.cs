using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW
{
    public partial class ciudades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            string id = this.tbID.Text;
            string nombre = this.tbNombre.Text;

            Ciudad d = new Ciudad();

            d.id_ciudad = id;
            d.nombre_ciudad = nombre;

            try
            {
                d.insert();
                Response.Redirect("ciudades.aspx");
            }catch(Exception ex)
            {
                Response.Write("<script> Windows.alert('Error');</script>");
                Response.Redirect("ciudades.aspx");
            }
        }
    }
}