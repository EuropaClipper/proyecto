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
        if (Session["user"] != null)
        {
            Login.Visible = false;
            L_Advertencia.Visible = true;
            B_No.Visible = true;
            B_Si.Visible = true;
        }
        else
        {
            Login.Visible = true;
            L_Advertencia.Visible = false;
            B_No.Visible = false;
            B_Si.Visible = false;
        }
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
            EAutenticacion autenticacion = new EAutenticacion();
            autenticacion.FechaInicio = DateTime.Now;
            Session["fecha_inicio"] = autenticacion.FechaInicio;
            autenticacion.Ip = new MAC().ip();
            autenticacion.Mac = new MAC().mac();
            autenticacion.Session = usuario.Nombre;
            autenticacion.UserId = usuario.Cedula;
            new DAOSeguridad().InsertarAutenticacion(autenticacion);
            Response.Redirect("Inicio.aspx");
        }
    }
    protected void LB_RContrasena_Click(object sender, EventArgs e)
    {
        P_RContrasena.Visible = true;
    }
    protected void B_RecuperarContrasena_Click(object sender, EventArgs e)
    {
        EUsuario correo = new EUsuario();
        correo.Correo = TB_Correo.Text;
        EToken token = new EToken();
        token = new RecuperarContraseña().Enviar_token(correo);
        ClientScriptManager cm = this.ClientScript;
        cm.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('" + token.Msj_error + "');</script>");
    }
    protected void B_Si_Click(object sender, EventArgs e)
    {
        EAutenticacion autentificar = new DAOSeguridad().BuscarAutentificacion(((EUsuario)Session["user"]).Cedula, ((DateTime)Session["fecha_inicio"]));
        if (autentificar != null)
        {
            autentificar.FechaFin = DateTime.Now;
            new DAOSeguridad().CerrarSesion(autentificar);
        }
        Session["user"] = null;
        Session["fecha_inicio"] = null;
        Login.Visible = true;
        L_Advertencia.Visible = false;
        B_No.Visible = false;
        B_Si.Visible = false;
        Response.Redirect("IniciarSesion.aspx");
    }

    protected void B_No_Click(object sender, EventArgs e)
    {
      Response.Redirect("Inicio.aspx");
    }
}