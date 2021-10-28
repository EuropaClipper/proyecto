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
        if(Session["producto"] != null)
        {
            EProducto producto = new DAOProducto().obtenerProducto((int)Session["producto"]);
            Image1.ImageUrl = producto.Imagen_uno;
            Image2.ImageUrl = producto.Imagen_dos;
            Image3.ImageUrl = producto.Imagen_tres;
            L_Nombre.Text = producto.Nombre;
            L_Precio.Text = producto.Precio_venta.ToString();
        }
        else
        {
            Response.Redirect("Catalogo.aspx");
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["producto"] = null;
        Response.Redirect("Catalogo.aspx");
    }
}