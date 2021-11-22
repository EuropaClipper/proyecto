using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_HistorialCompras : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null || ((EUsuario)Session["user"]).Id_rol != 2) Response.Redirect("Inicio.aspx");
    }


    protected void GV_HCompras_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Redirect("Vista_Compra.aspx?factura=" + e.CommandArgument);
    }
}