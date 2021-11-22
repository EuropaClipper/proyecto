using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_VistaPedidos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null || ((EUsuario)Session["user"]).Id_rol != 1) Response.Redirect("Inicio.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName == "cambioEstado")
        {
            new DAOCompra().CambiarEstado(int.Parse(e.CommandArgument.ToString()));
            ECompra compra = new DAOCompra().ObtenerCompra(int.Parse(e.CommandArgument.ToString()));
            new Correos().EnviarCorreoCompra(compra.Usuario.Correo,compra.Id,compra.Id_estado);
            GV_PPendientes.DataBind();
            GV_HPedidos.DataBind();
        }
        else
        {
            Response.Redirect("Vista_Compra.aspx?factura=" + e.CommandArgument);
        }
    }

    protected void GV_HPedidos_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName == "verFactura")
        {
            Response.Redirect("Vista_Compra.aspx?factura=" + e.CommandArgument);
        }
    }
}