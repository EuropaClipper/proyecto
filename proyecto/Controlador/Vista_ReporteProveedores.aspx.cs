using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Vista_ReporteProveedores : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CargarReporte();
    }
    protected void CargarReporte()
    {
        try
        {
            R_Proveedores inf = LlenarReporte();
            CRS_Proveedores.ReportDocument.SetDataSource(inf);
            CRV_Proveedores.ReportSource = CRS_Proveedores;
        }
        catch (Exception) {throw; }
    }
    protected R_Proveedores LlenarReporte()
    {
        R_Proveedores reporte = new R_Proveedores();
        DataRow fila;
        DataTable informacion = reporte.datos_proveedor;
        List<EProveedor> proveedores = new List<EProveedor>();
        int estado = int.Parse(Session["estado_proveedor"].ToString());
        if (estado == 0) proveedores = new DAOProveedor().ObtenerProveedores();
        else
        {
            if(estado == 1) proveedores = new DAOProveedor().ObtenerProveedores().Where(x=> x.Id_estado.Equals(1)).ToList();
            else proveedores = new DAOProveedor().ObtenerProveedores().Where(x => x.Id_estado.Equals(2)).ToList();
        }
        foreach (var item in proveedores)
        {
            fila = informacion.NewRow();
            fila["cedula"] = item.Id;
            fila["nombre"] = item.Nombre;
            fila["empresa"] = item.Empresa;
            fila["telefono"] = item.Telefono;
            fila["estado"] = item.Estado.Estado;
            informacion.Rows.Add(fila);
        }
        return reporte;
    }
}