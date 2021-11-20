using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Informacion_Usuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EUsuario user=(EUsuario)Session["user"];
        if (!IsPostBack)
        {
            TB_nombreE.Text = user.Nombre;
            TB_correoE.Text = user.Correo;
            TB_telefonoE.Text = user.Telefono;
            TB_usuarioE.Text = user.Usuario;
            TB_contraseñaE.Text = user.Clave;
            TB_direccionE.Text = user.Direccion;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        EUsuario user = (EUsuario)Session["user"];
        user.Nombre = TB_nombreE.Text;
        user.Correo = TB_correoE.Text;
        user.Telefono = TB_telefonoE.Text;
        user.Usuario = TB_usuarioE.Text;
        user.Clave = TB_contraseñaE.Text;
        user.Direccion = TB_direccionE.Text;
        new DAOUsuario().ActualizarUsuario(user);
        Response.Write("<script>alert('Actualizado satisfactoriamente')</script>");
    }

    protected void B_restaurar_Click(object sender, EventArgs e)
    {
        EUsuario user = (EUsuario)Session["user"];
        TB_nombreE.Text = user.Nombre;
        TB_correoE.Text = user.Correo;
        TB_telefonoE.Text = user.Telefono;
        TB_usuarioE.Text = user.Usuario;
        TB_contraseñaE.Text = user.Clave;
        TB_direccionE.Text = user.Direccion;
    }
}