using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace VIEW
{
    public partial class modificarVuelo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RequiredFieldValidator1.Enabled = false;
            RegularExpressionValidator1.Enabled = false;
            this.RequiredFieldValidator2.Enabled = false;
            this.RangeValidator1.Enabled = false;

            this.ddlOrigen.Enabled = false;
            this.ddlDestino.Enabled = false;
            this.tbHora.Enabled = false;
            this.tbValor.Enabled = false;
            this.ddlHora.Enabled = false;
        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            this.ddlID.Enabled = false;
            this.ddlHora.Enabled = true; 
        }

        protected void btnCargar2_Click(object sender, EventArgs e)
        {
            RequiredFieldValidator1.Enabled = true;
            RegularExpressionValidator1.Enabled = true;
            this.RequiredFieldValidator2.Enabled = true;
            this.RangeValidator1.Enabled = true;
            this.ddlHora.Enabled = false;

            this.ddlOrigen.Enabled = true;
            this.ddlDestino.Enabled = true;
            this.tbHora.Enabled = true;
            this.tbValor.Enabled = true;

            System.TimeSpan hora = System.TimeSpan.Parse(ddlHora.SelectedValue.ToString());
            string id = ddlID.SelectedValue.ToString();

            Vuelo v = Vuelo.buscar(hora, id);
            tbHora.Text = hora.ToString();
            tbValor.Text = v.valor.ToString();

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
            RequiredFieldValidator1.Enabled = false;
            RegularExpressionValidator1.Enabled = false;
            this.RequiredFieldValidator2.Enabled = false;
            this.RangeValidator1.Enabled = false;
            this.ddlHora.Enabled = true;
            this.ddlID.Enabled = true;

            Vuelo v = new Vuelo();

            v.id_vuelo = ddlID.SelectedValue.ToString();
            v.HORA = System.TimeSpan.Parse(ddlHora.SelectedValue.ToString());
            v.id_ciudad_origen = ddlOrigen.SelectedValue.ToString();
            v.id_ciudad_destino = ddlDestino.SelectedValue.ToString();
            v.valor = decimal.Parse(tbValor.Text);

            if (!ddlDestino.Text.Equals(ddlOrigen.Text))
            {
                if (v.update())
                {
                    Response.Redirect("modificarVuelo");
                }
                else
                {
                    Response.Write("<script>window.alert('Vuelo no Modificado');</script>");
                }
            }
            else
            {
                Response.Write("<script>window.alert('Eliga Ciudades Distintas');</script>");
            }
        }

    }
}