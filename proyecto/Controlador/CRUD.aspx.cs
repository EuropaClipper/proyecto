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
        if (ViewState["eleccion"].ToString() == "nuevo")
        {
            producto.Nombre = TB_Nombre.Text;
            producto.Descripcion = TB_Descripcion.Text;
            producto.Precio_venta = int.Parse(TB_Precio_venta.Text);
            producto.Cantidad_inventario = int.Parse(TB_Cantidad.Text);
            producto.Id_categoria = int.Parse(DropDownList3.SelectedValue);
            producto.Id_proveedor = DropDownList1.SelectedValue;
            producto.precio_compra = double.Parse(TB_Precio_Compra.Text);
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
                    var guid = Guid.NewGuid();
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
                    var guid = Guid.NewGuid();
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
            TB_Nombre.Text = "";
            TB_Descripcion.Text = "";
            TB_Precio_venta.Text = "";
            TB_Precio_Compra.Text = "";
            DropDownList3.SelectedValue = "0";
            TB_Cantidad.Text = "";
            Response.Redirect("CRUD.aspx");


        }
        else
        {
            producto = new DAOProducto().obtenerProducto(int.Parse(DropDownList2.SelectedValue));
            producto.Cantidad_inventario += int.Parse(TB_Cantidad2.Text);
            producto.Precio_venta = double.Parse(TB_PCmpra2.Text);
            producto.precio_compra = double.Parse(TB_Precio_venta2.Text);
            producto.Fecha_modificacion = DateTime.Now;
            producto.Estado = true;
            producto.Session = ((EUsuario)Session["user"]).Nombre;
            new DAOProducto().actualizar(producto);
        }
        GV_Inventario.DataBind();
        MultiView1.ActiveViewIndex = 0;
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        ViewState["eleccion"] = "nuevo";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
        ViewState["eleccion"] = "existente";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["id"] =DropDownList1.SelectedValue;
        DropDownList2.DataBind();
        
    }
}