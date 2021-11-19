using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class DAOPedidos
{
    public List<Pedido> ObtenerPedidosPendientes()
    {
        List<Pedido> pedidos_pendientes = new List<Pedido>();
        var grupo = new DAOCompra().ObtenerCompras().Where(x=> x.Compra.Id_estado.Equals(2)).GroupBy(x=>x.Id_compra);
        foreach (var item in grupo)
        {
            Pedido auxiliar = new Pedido();
            int i = 0;
            string producto_cantidad = "";
            auxiliar.Total = item.First().Compra.Total;
            auxiliar.Factura =item.Key;
            foreach (var detalles in item)
            {
                for (; i < 1; i++) auxiliar.Comprador = detalles.Compra.Usuario.Nombre;
                auxiliar.Estado = detalles.Compra.Estado.Estado;
                producto_cantidad += detalles.Producto.Nombre + "  " + detalles.Cantidad + "\n";
            }
            auxiliar.Productos_Cantidades = producto_cantidad;
            pedidos_pendientes.Add(auxiliar);
        }
        return pedidos_pendientes.OrderBy(x => x.Factura).ToList();
    }
    public List<Pedido> ObtenerPedidos()
    {
        List<Pedido> pedidos = new List<Pedido>();
        var grupo = new DAOCompra().ObtenerCompras().GroupBy(x => x.Id_compra);
        foreach (var item in grupo)
        {
            Pedido auxiliar = new Pedido();
            int i = 0;
            string producto_cantidad = "";
            auxiliar.Total = item.First().Compra.Total; auxiliar.Factura = item.Key;
            foreach (var detalles in item)
            {
                for (; i < 1; i++) auxiliar.Comprador = detalles.Compra.Usuario.Nombre;
                auxiliar.Estado = detalles.Compra.Estado.Estado;
                producto_cantidad += detalles.Producto.Nombre + "  " + detalles.Cantidad + "\n";
            }
            auxiliar.Productos_Cantidades = producto_cantidad;
            pedidos.Add(auxiliar);
        }
        return pedidos.OrderBy(x=>x.Factura).ToList();
    }
}