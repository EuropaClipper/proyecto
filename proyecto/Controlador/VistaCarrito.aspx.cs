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
        if (Session["user"] == null || ((EUsuario)Session["user"]).Id_rol != 2) Response.Redirect("Inicio.aspx");
    }
    protected void LV_Carrito_DataBound(object sender, EventArgs e)
    {
        string total = new DAOCarrito().ProductosEnCarrito((EUsuario)Session["user"]).Sum(x => x.precio_pagar).ToString();
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
            nueva_compra.Total = lista_productos.Sum(x => x.precio_pagar);
            nueva_compra.Id_estado = 2;
            nueva_compra = new DAOCompra().InsertarCompra(nueva_compra);
            foreach (var item in lista_productos)
            {
                EDetallesCompra detalles = new EDetallesCompra();
                detalles.Id_compra  = nueva_compra.Id;
                detalles.Id_producto = item.Id;
                detalles.Cantidad = item.cantidad_carrito;
                detalles.Precio_compra = (item.precio_pagar / detalles.Cantidad);
                detalles.Total = item.precio_pagar;
                new DAOCompra().InsertarDetallesCompra(detalles);
                new DAOProducto().ModificarCantidad(item.Id, item.cantidad_carrito);
                new DAOCarrito().EliminarCarrito(new DAOCarrito().Existe(item.Id, ((EUsuario)Session["user"]).Cedula));
            }
            new Correos().EnviarCorreoCompra(((EUsuario)Session["user"]).Correo, nueva_compra.Id, nueva_compra.Id_estado);
            Response.Redirect("Vista_Compra.aspx?factura="+nueva_compra.Id);
        }
        else{
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('¡MAS DESPACIO VELOCISTA!\\nAgregue almenos un producto al carrito');</script>");
        }
    }

}