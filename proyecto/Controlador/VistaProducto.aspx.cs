using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_VistaProducto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            EProducto eProducto = new DAOProducto().obtenerProducto((int)Session["producto"]);
            img1.ImageUrl = Image1.ImageUrl = eProducto.Imagen_uno;
            img2.ImageUrl =Image2.ImageUrl = eProducto.Imagen_dos;
            img3.ImageUrl =Image3.ImageUrl = eProducto.Imagen_dos;
            L_nombre.Text = eProducto.Nombre;
            L_precio.Text =eProducto.Precio_venta.ToString();
            L_des.Text = eProducto.Descripcion;
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }


    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            EProducto eProducto = new DAOProducto().obtenerProducto((int)Session["producto"]);
            int id_producto = eProducto.Id;
            int cantidadReservada = int.Parse(TB_Cantidad.Text);
            int disponible = new DAOCarrito().CantidadDisponible(id_producto);
            if (disponible < cantidadReservada)
            {
                ClientScriptManager cm = this.ClientScript;
                cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('La cantidad seleccionada es mayor a la disponible.');</script>");
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
            Response.Redirect("VistaProducto.aspx");
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Inicie sesion para agregar productos al carrito');window.location.href=\"IniciarSesion.aspx\";</script>");
        }
    }
       
}