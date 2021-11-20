using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_VistaPedidos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        new DAOPedidos().ObtenerPedidosPendientes();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        new DAOCompra().CambiarEstado(int.Parse(e.CommandArgument.ToString()));
        GV_PPendientes.DataBind();
        GV_HPedidos.DataBind();
    }
}