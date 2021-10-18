using System;
using System.Web.UI;

public partial class View_Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BTN_Registrar_Click(object sender, EventArgs e)
    {
        EUsuario nuevo_usuario = new EUsuario();
        nuevo_usuario.Cedula = TB_Cedula.Text.Trim();

        if(!(new DAOUsuario().EstaRegistrado(nuevo_usuario)))
        {
            nuevo_usuario.Nombre = (TB_Nombre.Text.Trim()+TB_Apellidos.Text.Trim());
            nuevo_usuario.Usuario = TB_Usuario.Text.Trim();
            nuevo_usuario.Clave = TB_Contrasena.Text.Trim();
            nuevo_usuario.Correo = TB_CorreoElectronico.Text.Trim();
            nuevo_usuario.Telefono = TB_Telefono.Text.Trim();
            nuevo_usuario.Direccion = TB_Dirrecion.Text.Trim();
            nuevo_usuario.Id_rol = 2;
            nuevo_usuario.Fecha_modificacion = DateTime.Now;
            nuevo_usuario.Session = "sistema";
            new DAOUsuario().RegistrarUsuario(nuevo_usuario);
        }
        else
        {
            ClientScriptManager cm = this.ClientScript;
            cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('El usuario ya existe');</script>");
        }
    }
}