using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_ReporteDia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

            cargarReporte();

    }
    protected void cargarReporte()
    {
        try
        {
            R_Diario inf = llenarReporte();
            CRS_RDia.ReportDocument.SetDataSource(inf);
            CRV_RDia.ReportSource = CRS_RDia;
        }
        catch (Exception) { throw; }
    }
    protected R_Diario llenarReporte()
    {
        DateTime fecha = DateTime.Parse(Session["fecha_informe"].ToString());
        R_Diario reporte = new R_Diario();
        DataRow fila;
        DataTable detalles_informe = reporte.detalles_informe;
        fila = detalles_informe.NewRow();
        fila["fecha"] = fecha;  
        List<EDetallesCompra> compras = new DAOCompra().ObtenerCompras().Where(x => x.Compra.Fecha_compra.Date.Equals(fecha.Date)).ToList();
        List<EInventario> gastos = new DAOInventario().ObtenerInventario().Where(x => x.Fecha_modificacion.Date.Equals(fecha.Date)).ToList();
        double ingresos = compras.Sum(x => x.Total);
        double costos = gastos.Sum(x => x.Precio_compra * x.Cantidad);
        double utilidad = ingresos - costos;
        fila["utilidad"] = utilidad;
        detalles_informe.Rows.Add(fila);
 
        DataTable detalles_ventas = reporte.reporte_ventas_dia;
        foreach (var item in compras)
        {
            fila = detalles_ventas.NewRow();
            fila["n_factura"] = item.Id_compra;
            fila["nombre_producto"] = item.Producto.Nombre;
            fila["descripcion"] = item.Producto.Descripcion;
            fila["cantidad"] = item.Cantidad;
            fila["monto_venta"] = item.Total;
            fila["cantidad_R"] = item.Producto.Cantidad_inventario;
            fila["ingresos"] = ingresos;
            detalles_ventas.Rows.Add(fila);
        }
        DataTable detalles_gastos = reporte.reporte_gastos_dia;
        foreach (var item in gastos)
        {
            fila = detalles_gastos.NewRow();
            fila["producto"] = item.Producto.Nombre;
            fila["cantidad"] = item.Cantidad;
            fila["costo_unidad"] = item.Precio_compra;
            fila["total"] = item.Precio_compra * item.Cantidad;
            fila["proveedor"] = item.Producto.proveedor.Nombre;
            fila["costos"] = costos;
            detalles_gastos.Rows.Add(fila);
        }
        return reporte;
    }
}