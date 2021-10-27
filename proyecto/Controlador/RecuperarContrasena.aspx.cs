using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_RecuperarContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            string token = Request.QueryString["token"];
            EToken tokenCompleto = new DAOSeguridad().verificarToken(token);

            if (tokenCompleto == null)
            {
                Response.Redirect("IniciarSesion.aspx");
            }
            else
            {
                if (tokenCompleto.Estado == true)
                {
                    this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token ya fue usado. Genere uno nuevo');window.location=\"IniciarSesion.aspx\"</script>");
                }
                else
                {
                    if (tokenCompleto.Fecha_caducidad < DateTime.Now)
                    {
                        this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('El Token esta vencido. Genere uno nuevo');window.location=\"IniciarSesion.aspx\"</script>");
                    }
                    else
                    {
                        Session["userId"] = tokenCompleto.Id_User;
                    }
                }
            }         
        }
        else
        {
            Response.Redirect("IniciarSesion.aspx");
        }          
    }


    protected void B_Confirmar_Click(object sender, EventArgs e)
    {
        EUsuario usuario = new EUsuario();
        usuario.Cedula = Session["userId"].ToString();
        usuario = new DAOUsuario().ObtenerUsuario(usuario);
        usuario.Clave = TB_CContrasena.Text;
        new DAOUsuario().ActualizarUsuario(usuario);
        this.RegisterStartupScript("mensaje", "<script type='text/javascript'>alert('Clave actualizada');window.location=\"IniciarSesion.aspx\"</script>");
    }
}