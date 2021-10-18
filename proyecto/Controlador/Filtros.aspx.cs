using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Filtros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["nombre"] = null;
            Session["precio"] = new int[2];
            Session["precio"] = null;
            Session["categoria"] = 0;
        }
    }
    protected void CB_Nombre_CheckedChanged(object sender, EventArgs e)
    {
        if (CB_Nombre.Checked)
        {
            TB_Nombre.Enabled = true;
            RFV_Nombre.Enabled = true;
        }
        else
        {
            TB_Nombre.Enabled = false;
            TB_Nombre.Text = "";
            RFV_Nombre.Enabled = false;
        }
    }

    protected void CB_Precio_CheckedChanged(object sender, EventArgs e)
    {
        if (CB_Precio.Checked)
        {
            TB_Min.Enabled = true;
            RFV_PMin.Enabled = true;
            TB_Max.Enabled = true;
            RFV_PMax.Enabled = true;
        }
        else
        {
            TB_Min.Enabled = false;
            TB_Min.Text = "";
            RFV_PMin.Enabled = false;
            TB_Max.Enabled = false;
            TB_Max.Text = "";
            RFV_PMax.Enabled = false;
        }
    }
    protected void CB_Categoria_CheckedChanged(object sender, EventArgs e)
    {
        if (CB_Categoria.Checked)
        {
            DDL_Categorias.Enabled = true;
            RV_DDL.Enabled = true;
        }
        else
        {
            DDL_Categorias.Enabled = false;
            RV_DDL.Enabled = false;
            DDL_Categorias.SelectedValue = "0";
        }
    }
    protected void B_Buscar_Click(object sender, EventArgs e)
    {
        if (!CB_Nombre.Checked && !CB_Categoria.Checked && !CB_Precio.Checked)
        {
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('¡MAS DESPACIO VELOCISTA!\\nSeleccione un filtro para realizar la busqueda');</script>");
            return;
        }
        if (CB_Nombre.Checked) Session["nombre"] = TB_Nombre.Text;
        else Session["nombre"] = null;
        if (CB_Categoria.Checked) Session["categoria"] = int.Parse(DDL_Categorias.SelectedValue);
        else Session["categoria"] = 0;
        if (CB_Precio.Checked)
        {
            Session["precio"] = new int[2];
            ((int[])Session["precio"])[0] = int.Parse(TB_Min.Text);
            ((int[])Session["precio"])[1] = int.Parse(TB_Max.Text);
        }
        else
        {
            Session["precio"] = new int[2];
            Session["precio"] = null;
        }
        //DL_Filtros.DataBind();
    }
}