using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_QuejasReclamos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_guardar_Click(object sender, EventArgs e)
    {

        ClientScriptManager cm = this.ClientScript;
        var guid = Guid.NewGuid();
        string extension = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        string SaveLocation = Server.MapPath("~\\Imagenes\\") + guid + extension;
        EquejasReclamos obj = new EquejasReclamos();
        obj.Nombre = TextBox_nombre.Text;
        obj.Email = TextBox_email.Text; ;
        obj.Mensaje = TextBox_mensaje.Text; ;
        if (!(extension.Equals(".jpg") || extension.Equals(".png")))
        {
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('No se permite este archivo');</script> ");
            return;
        }
        obj.Imagen = "~\\Imagenes\\" + guid + extension;


        FileUpload1.PostedFile.SaveAs(SaveLocation);
        new DAOQuejasReclamos().guardarQuejasreclamos(obj);
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se guardo Correctamente');</script> ");

    }


}