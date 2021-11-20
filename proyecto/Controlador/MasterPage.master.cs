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
           
            if (((EUsuario)Session["user"]).Id_rol == 1)
            {
                MV_Menu.ActiveViewIndex = 2;
                IB_Carrito.Visible = l_CantidadCarrito.Visible = false;
            }
            else 
            {
                MV_Menu.ActiveViewIndex = 1;
                l_CantidadCarrito.Text = new DAOCarrito().CantidadEnCarrito(((EUsuario)Session["user"]).Cedula).ToString();
                IB_Carrito.Visible = l_CantidadCarrito.Visible =  true;
            }
            B_CerrarSesion.Visible = true;
        }
        else
        {
            l_CantidadCarrito.Text = "0";
            MV_Menu.ActiveViewIndex = 0;
            IB_Carrito.Visible = l_CantidadCarrito.Visible = B_CerrarSesion.Visible = false;
        }
        
    }

    protected void B_CerrarSesion_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Inicio.aspx");
    }
}
