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
        if (Session["user"] == null || ((EUsuario)Session["user"]).Id_rol != 2) Response.Redirect("Inicio.aspx");
    }
    protected void GV_Quejas_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName == "Select") Response.Redirect("Vista_Compra.aspx?factura=" + e.CommandArgument);
        if (e.CommandName == "HQueja")
        {
            L_NFactura.Text = e.CommandArgument.ToString();
            PQuejas.Visible = true; 
            PQuejas.Focus();
        }
    }

    protected void B_Enviar_Click(object sender, EventArgs e)
    {
        EquejasReclamos nueva_queja = new EquejasReclamos() {
            Id_Factura = int.Parse(L_NFactura.Text),
            Descripcion = TB_Descripcion.Text,
            Estado = true
        };
        if (FU_Img.HasFile)
        {
            string extension = System.IO.Path.GetExtension(FU_Img.PostedFile.FileName);

            if (extension.Equals(".jpg") || extension.Equals(".jpeg") || extension.Equals(".png"))
            {
                var guid = Guid.NewGuid();//generar un nombre al azar.
                nueva_queja.Imagen= "~\\Imagenes\\productos\\" + guid + extension;
                FU_Img.PostedFile.SaveAs(Server.MapPath("~\\Imagenes\\productos\\") + guid + extension);
            }
            else
            {
                this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Imagen no valida: tipo de archivo erroneo');</script>");
                return;
            }
        }
        else
        {
            nueva_queja.Imagen = "~\\Imagenes\\pagina_web\\sin_imagen.jpg";
        }
        nueva_queja.Fecha = DateTime.Now;
        new DAOQuejasReclamos().guardarQuejasreclamos(nueva_queja);
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Se guardo su queja con exito');window.location.href=\"QuejasReclamos.aspx\";</script> ");
        L_NFactura.Text = "";
        TB_Descripcion.Text = "";
        PQuejas.Visible = false;
    }


}