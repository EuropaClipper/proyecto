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
}