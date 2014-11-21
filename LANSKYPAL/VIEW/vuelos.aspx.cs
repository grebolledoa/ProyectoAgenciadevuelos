using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW
{
    public partial class vuelos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ddlDestino.SelectedIndex = 1;
            }
            catch (Exception ex)
            {
                ddlDestino.SelectedIndex = 0;
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            if (!ddlDestino.Text.Equals(ddlOrigen.Text))
            {
                Vuelo v = new Vuelo();

                v.id_vuelo = tbId.Text;
                v.HORA = TimeSpan.Parse(tbHora.Text.ToString());
                v.id_ciudad_origen = ddlOrigen.SelectedValue.ToString();
                v.id_ciudad_destino = ddlDestino.SelectedValue.ToString();
                v.valor = decimal.Parse(tbValor.Text);

                if (v.insert())
                {
                    Response.Redirect("vuelos.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('Vuelo no Insertado');</script>");
                }
            }
            else
            {
                Response.Write("<script>window.alert('Eliga Ciudades Distintas');</script>");
            }
            
        }
    }
}