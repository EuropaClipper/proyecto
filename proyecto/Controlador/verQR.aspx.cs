using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_verQR : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null || ((EUsuario)Session["user"]).Id_rol != 1) Response.Redirect("Inicio.aspx");
    }
    protected void GV_Quejas_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName == "revisar")
        {
            EquejasReclamos queja = new DAOQuejasReclamos().verQuejasreclamos().Where(x => x.Id.Equals(int.Parse(e.CommandArgument.ToString()))).First();
            queja.Estado = false;
            new DAOQuejasReclamos().ActualizarQuejareclamo(queja);
            GV_Quejas.DataBind();
        }
    }
}