using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Pedido
{
    public int Factura { get; set; }
    public string Comprador { get; set; }
    public string Productos_Cantidades { get; set; }
    public  double Total { get; set; }
    public string Estado { get; set; }
}