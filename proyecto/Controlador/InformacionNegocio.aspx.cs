using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_InformacionNegocio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ENegocio negocio = new DAONegocio().obtenerInformacion();
            L_Correo.Text = negocio.Correo;
            L_Direccion.Text = negocio.Direccion;
            L_NIT.Text = negocio.Nit;
            L_Nombre.Text = negocio.Nombre;
            L_Telefono.Text = negocio.Telefono;
        }
        if (Session["user"] != null && ((EUsuario)Session["user"]).Id_rol.Equals(1)) B_Editar.Visible = true;
        else B_Editar.Visible = false;
    }


    protected void B_Editar_Click(object sender, EventArgs e)
    {
        P_Editar.Visible = true;
    }

    protected void B_Guardar_Click(object sender, EventArgs e)
    {
        ENegocio actualizar = new ENegocio() {
            Correo = TB_Correo.Text,
            Direccion = TB_Direccion.Text,
            Fecha_modificacion = DateTime.Now,
            Nit = L_NIT.Text,
            Nombre = TB_Nombre.Text,
            Session = ((EUsuario)Session["user"]).Nombre,
            Telefono = TB_Telefono.Text
        };
        new DAONegocio().actualizarInformacion(actualizar);
        TB_Correo.Text = "";
        TB_Direccion.Text = "";
        TB_Nombre.Text = "";
        TB_Telefono.Text = "";
        P_Editar.Visible = false;
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script type='text/javascript'>alert('Información actualizada');window.location.href=\"InformacionNegocio.aspx\";</script>");
    }
}