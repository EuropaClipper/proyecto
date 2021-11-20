using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_VistaReportes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["user"] != null)
        //{
        //    cargarReporte();
        //}
        //else Response.Redirect("Inicio.aspx");
    }
    protected void B_GInforme_Click(object sender, EventArgs e)
    {
        Session["fecha_informe"] = TB_FReporte.Text;
        Response.Redirect("ReporteDia.aspx");
    }

    protected void B_RProveedores_Click(object sender, EventArgs e)
    {
        Session["estado_proveedor"] = RBL_Estado.SelectedIndex;
        Response.Redirect("Vista_ReporteProveedores.aspx");
    }
}