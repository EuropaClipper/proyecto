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
            LB_Nombre.Text = ((EUsuario)Session["user"]).Nombre;
            LB_Nombre.PostBackUrl = "Informacion_Usuario.aspx";
            LB_Nombre.Visible = true;
            B_CerrarSesion.Visible = true;
        }
        else
        {
            l_CantidadCarrito.Text = "0";
            MV_Menu.ActiveViewIndex = 0;
            IB_Carrito.Visible = l_CantidadCarrito.Visible = B_CerrarSesion.Visible = LB_Nombre.Visible =  false;
        }
        
    }

    protected void B_CerrarSesion_Click(object sender, EventArgs e)
    {
        EAutenticacion autentificar = new DAOSeguridad().BuscarAutentificacion(((EUsuario)Session["user"]).Cedula, ((DateTime)Session["fecha_inicio"]));
        if (autentificar != null)
        {
            autentificar.FechaFin = DateTime.Now;
            new DAOSeguridad().CerrarSesion(autentificar);
        }
        Session["user"] = null;
        Session["fecha_inicio"] = null;
        Response.Redirect("Inicio.aspx");
    }
}
