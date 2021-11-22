using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_InterfazProveedores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null || ((EUsuario)Session["user"]).Id_rol != 1) Response.Redirect("Inicio.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        EProveedor proveedor = new EProveedor();

        proveedor.Id = TB_Cedula.Text;
        proveedor.Nombre = TB_Nombre.Text;
        proveedor.Empresa = TB_Empresa.Text;
        proveedor.Telefono = TB_Telefono.Text;
        proveedor.Session = ((EUsuario)Session["user"]).Nombre;
        proveedor.Fecha_modificacion = DateTime.Now;

        new DAOProveedor().insertarProveedor(proveedor);
        GridView1.DataBind();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName == "Cambio")
        {
            EProveedor Proveedor = new DAOProveedor().ObtenerProveedor(e.CommandArgument.ToString());
            if (Proveedor.Id_estado == 1)
            {
                Proveedor.Id_estado = 2;
            }
            else
            {
                Proveedor.Id_estado = 1;
            }
            new DAOProveedor().actualizarproveedor(Proveedor);
            GridView1.DataBind();
        }
    }
}