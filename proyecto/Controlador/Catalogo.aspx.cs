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
        if (e.CommandName.ToString() == "detalles")
        {
            Session["producto"] = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("VistaProducto.aspx");
        }
        else
        {
            if (Session["user"] != null)
            {
                //agregar a carrito
                int id_producto = int.Parse(e.CommandArgument.ToString());
                int cantidadReservada = int.Parse(((TextBox)e.Item.FindControl("TB_Cantidad")).Text);
                int disponible = new DAOCarrito().CantidadDisponible(id_producto);
                if (disponible < cantidadReservada)
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Cantidad seleccionada no disponible.\\nCantidad que puede agregar: "+disponible+"');</script>");
                    return;
                }
                ECarrito carrito = new ECarrito();
                carrito.Cantidad = cantidadReservada;
                carrito.FechaAgregado = DateTime.Now;
                carrito.ProductoId = id_producto;
                carrito.UserId = ((EUsuario)Session["user"]).Cedula;
                ECarrito carrito_aux = new DAOCarrito().Existe(id_producto, ((EUsuario)Session["user"]).Cedula);
                if (carrito_aux != null)
                {
                    carrito.Id = carrito_aux.Id;
                    carrito.Cantidad = cantidadReservada + carrito_aux.Cantidad;
                    new DAOCarrito().ActualizarCarrito(carrito);
                }
                else
                {
                    new DAOCarrito().InsertarCarrito(carrito);
                }

                Response.Redirect("Catalogo.aspx");
            }
            else
            {
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Inicie sesion para agregar productos al carrito');window.location.href=\"IniciarSesion.aspx\";</script>");

            }
        }
    }


    protected void filtros_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("Filtros.aspx");
    }
}