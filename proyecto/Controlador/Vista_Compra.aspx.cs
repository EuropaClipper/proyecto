using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Vista_Vista_Compra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
            if (Request.QueryString["factura"] != null) CargarFactura();
            else Response.Redirect("Inicio.aspx");
        else Response.Redirect("Inicio.aspx");
    }
    protected void CargarFactura()
    {
        try
        {
            Reporte inf = llenarReporte();
            CRS_Compra.ReportDocument.SetDataSource(inf);
            CRV_Compra.ReportSource = CRS_Compra;
        }
        catch (Exception){throw;}
    }
    protected Reporte llenarReporte()
    {
        Reporte reporte = new Reporte();
        DataRow fila;
        DataTable informacion = reporte.Compra_Factura;
        List<EDetallesCompra> detalle = new DAOCompra().ObtenerDetallesCompra(int.Parse(Request.QueryString["factura"]));
        foreach (var item in detalle)
        {
            fila = informacion.NewRow();
            fila["No"] = item.Id_compra;
            fila["NombreComprador"] = item.Compra.Usuario.Nombre;
            fila["fecha"] = item.Compra.Fecha_compra;
            fila["total"] = item.Compra.Total;
            fila["nombre_producto"] = item.Producto.Nombre;
            fila["imagen"] = streamFile(item.Producto.Imagen_uno);
            fila["cantidad"] = item.Cantidad;
            fila["precio_unidad"] = item.Precio_compra;
            fila["precio_total"] = item.Total;
            fila["Descripcion"] = item.Producto.Descripcion;
            informacion.Rows.Add(fila);
        }
        return reporte;
    }


    private byte[] streamFile(string filename)
    {
        FileStream fs;
        if (!filename.Equals("")) fs = new FileStream(Server.MapPath(filename), FileMode.Open, FileAccess.Read);
        else fs = new FileStream(Server.MapPath("~/Imagenes/Proyetcos.jpg"), FileMode.Open, FileAccess.Read);
        // Create a byte array of file stream length
        byte[] ImageData = new byte[fs.Length];
        //Read block of bytes from stream into the byte array
        fs.Read(ImageData, 0, System.Convert.ToInt32(fs.Length));
        //Close the File Stream
        fs.Close();
        return ImageData; //return the byte data
    }
}