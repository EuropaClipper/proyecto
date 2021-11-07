using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Vista_ApartadoProducto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void CheckBox1_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName != null)
        {
            DAOProducto producto = new DAOProducto();
            producto.estado(e.CommandArgument.ToString());
            DataList1.DataBind();
        }
    }
}