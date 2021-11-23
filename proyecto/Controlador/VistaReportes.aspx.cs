using System;

public partial class Vista_VistaReportes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null || ((EUsuario)Session["user"]).Id_rol != 1) Response.Redirect("Inicio.aspx");
    }
    protected void B_GInforme_Click(object sender, EventArgs e)
    {
        Session["fecha_informe"] = (TB_FReporte.Text != "") ?TB_FReporte.Text :DateTime.Now.ToString("d");
        Response.Redirect("ReporteDia.aspx");
    }

    protected void B_RProveedores_Click(object sender, EventArgs e)
    {
        Session["estado_proveedor"] = RBL_Estado.SelectedIndex;
        Response.Redirect("Vista_ReporteProveedores.aspx");
    }
}