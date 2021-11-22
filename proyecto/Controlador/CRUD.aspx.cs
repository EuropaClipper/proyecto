using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_CRUD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null || ((EUsuario)Session["user"]).Id_rol != 1) Response.Redirect("Inicio.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        EProducto producto = (EProducto)e.Row.DataItem;
        if(producto != null)
        {
            if(e.Row.FindControl("LinkButton1") != null)
            {
                ((Label)e.Row.FindControl("Label2")).Text = producto.Fecha_modificacion.ToString("G");
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        EProducto producto = new EProducto();

        producto.Nombre = TB_NombreP.Text;
        producto.Descripcion = TB_Descripcion.Text;
        producto.Id_proveedor = TB_NProveedor.Text;
        producto.Id_categoria= int.Parse(TB_Categoria.Text);
        producto.Cantidad_inventario = int.Parse(TB_CantidaInventario.Text);
        producto.Precio_venta = double.Parse(TB_PrecioVenta.Text);
        producto.Fecha_modificacion = DateTime.Now;
        producto.Estado = true;
        producto.Session = ((EUsuario)Session["user"]).Nombre;
        string extension = System.IO.Path.GetExtension(FU_Foto.PostedFile.FileName);

        if (extension.Equals(".jpg") || extension.Equals(".jpeg") || extension.Equals(".png"))
        {
            var guid = Guid.NewGuid();//generar un nombre al azar.
            producto.Imagen_uno = "~\\Imagenes\\productos\\" + guid + extension;
            FU_Foto.PostedFile.SaveAs(Server.MapPath("~\\Imagenes\\productos\\") + guid + extension);
        }
        else
        {
            this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Imagen de perfil no valida: tipo de archivo erroneo');</script>");
            return;
        }
        if (FU_Foto2.HasFile)
        {
            extension = System.IO.Path.GetExtension(FU_Foto2.PostedFile.FileName);
            if (extension.Equals(".jpg") || extension.Equals(".jpeg") || extension.Equals(".png"))
            {
                var  guid = Guid.NewGuid();
                producto.Imagen_dos = "~\\Imagenes\\productos\\" + guid + extension;
                FU_Foto2.PostedFile.SaveAs(Server.MapPath("~\\Imagenes\\productos\\") + guid + extension);
            }
            else
            {
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Imagen de perfil no valida: tipo de archivo erroneo');</script>");
                return;
            }
        }
        else
        {
            producto.Imagen_dos = "~\\Imagenes\\pagina_web\\sin_imagen.jpg";
        }
        if (FU_Foto3.HasFile)
        {
            extension = System.IO.Path.GetExtension(FU_Foto3.PostedFile.FileName);
            if (extension.Equals(".jpg") || extension.Equals(".jpeg") || extension.Equals(".png"))
            {
                var guid = Guid.NewGuid();
                producto.Imagen_tres = "~\\Imagenes\\productos\\" + guid + extension;
                FU_Foto3.PostedFile.SaveAs(Server.MapPath("~\\Imagenes\\productos\\") + guid + extension);
            }
            else
            {
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Imagen de perfil no valida: tipo de archivo erroneo');</script>");
                return;
            }
        }
        else
        {
            producto.Imagen_tres = "~\\Imagenes\\pagina_web\\sin_imagen.jpg";
        }
        new DAOProducto().insertarProducto(producto);
        GV_Inventario.DataBind();
        TB_NombreP.Text = "";
        TB_NProveedor.Text = "";
        TB_PrecioVenta.Text = "";
        TB_Descripcion.Text = "";
        TB_CantidaInventario.Text = "";
        TB_Categoria.Text = "";
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        for (int i = 0; i < 3; i++)
        {
            string fileupload = "FU_Imagen" + (i + 1);
            FileUpload FU_Aux = (FileUpload)GV_Inventario.Rows[e.RowIndex].FindControl(fileupload);
            if (FU_Aux.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FU_Aux.PostedFile.FileName);
                if (extension.Equals(".jpg") || extension.Equals(".jpeg") || extension.Equals(".png"))
                {
                    var guid = Guid.NewGuid();
                    e.Keys[(9+i)] = "~\\Imagenes\\productos\\" + guid + extension;
                    FU_Aux.PostedFile.SaveAs(Server.MapPath("~\\Imagenes\\productos\\") + guid + extension);
                }
                else
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Imagen uno no valida');</script>");
                    return;
                }
            }
        }
    }
}