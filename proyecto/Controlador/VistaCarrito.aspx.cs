using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_VistaCarrito : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void LV_Carrito_DataBound(object sender, EventArgs e)
    {
        string total = new DAOCarrito().ProductosEnCarrito((EUsuario)Session["user"]).Sum(x => x.Precio_venta).ToString();
        if (total != "0")
        {
            L_Total.Text ="$" + total;
        }
        else
        {
            L_Total.Text = "$ 0.0";
        }
    }

    protected void LV_Carrito_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        new DAOCarrito().EliminarCarrito(new DAOCarrito().Existe(int.Parse(e.CommandArgument.ToString()), ((EUsuario)Session["user"]).Cedula));
        LV_Carrito.DataBind();
        Response.Redirect("VistaCarrito.aspx");
    }

    protected void B_Comprar_Click(object sender, EventArgs e)
    {
        List < EProducto > lista_productos = new DAOCarrito().ProductosEnCarrito((EUsuario)Session["user"]);
        if(lista_productos.Count() > 0)
        {
            ECompra nueva_compra = new ECompra();
            nueva_compra.Id_comprador = ((EUsuario)Session["user"]).Cedula;
            nueva_compra.Fecha_compra = DateTime.Now;
            nueva_compra.Total = lista_productos.Sum(x => x.Precio_venta);
            nueva_compra.Id_estado = 2;
            nueva_compra = new DAOCompra().InsertarCompra(nueva_compra);
            foreach (var item in lista_productos)
            {
                EDetallesCompra detalles = new EDetallesCompra();
                detalles.Id_compra  = nueva_compra.Id;
                detalles.Id_producto = item.Id;
                detalles.Cantidad = item.Cantidad_inventario;
                detalles.Precio_compra = (item.Precio_venta / detalles.Cantidad);
                detalles.Total = item.Precio_venta;
                new DAOCompra().InsertarDetallesCompra(detalles);
                new DAOProducto().ModificarCantidad(item.Id, item.Cantidad_inventario);
                new DAOCarrito().EliminarCarrito(new DAOCarrito().Existe(item.Id, ((EUsuario)Session["user"]).Cedula));            
            }
            Response.Redirect("Vista_Compra.aspx?factura="+nueva_compra.Id);
        }
        else{
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('¡MAS DESPACIO VELOCISTA!\\nAgregue almenos un producto al carrito');</script>");

        }
    }
}