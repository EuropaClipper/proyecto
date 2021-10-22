using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_IniciarSesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
        EUsuario usuario = new EUsuario();
        usuario.Usuario = Login.UserName;
        usuario.Clave = Login.Password;
        usuario = new DAOUsuario().IniciarSesion(usuario);
        if (usuario == null)
        {
            Login.FailureText = "Usuario o Contraseña Incorrectos Verifique!!!";
            return;
        }
        else
        {
            Session["user"] = usuario;
            switch (usuario.Id_rol)
            {
                case 1: Response.Redirect("Administrador.aspx");
                    break;
                case 2: Response.Redirect("Usuario.aspx");
                    break;
            }
        }
    }
    protected void LB_RContrasena_Click(object sender, EventArgs e)
    {
        P_RContrasena.Visible = true;
    }
}