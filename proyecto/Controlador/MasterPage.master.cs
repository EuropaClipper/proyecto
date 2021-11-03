using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            l_CantidadCarrito.Text = new DAOCarrito().CantidadEnCarrito(((EUsuario)Session["user"]).Cedula).ToString();
            B_Registro.Visible = B_ISesion.Visible = false;
            IB_Carrito.Visible = l_CantidadCarrito.Visible = B_CerrarSesion.Visible = true;
        }
        else
        {
            l_CantidadCarrito.Text = "0";
            B_Registro.Visible = B_ISesion.Visible = true;
            IB_Carrito.Visible = l_CantidadCarrito.Visible = B_CerrarSesion.Visible = false;
        }
        
    }

    protected void B_CerrarSesion_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Inicio.aspx");
    }
}
