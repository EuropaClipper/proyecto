using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Catalogo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void DL_Productos_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName.ToString() == "detalles")
        {
            Session["producto"] = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("VistaProducto.aspx");
        }
        else
        {
            int cantidadReservada = int.Parse(((TextBox)e.Item.FindControl("TB_Cantidad")).Text);

            ECarrito carrito = new ECarrito();
            carrito.Cantidad = cantidadReservada;
            new DAOCarrito().InsertarCarrito(carrito);
            Response.Redirect("VistaCarrito.aspx");
        }
    }

}