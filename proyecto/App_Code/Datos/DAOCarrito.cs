using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DAOCarrito
{
    public int CantidadDisponible(int productoId)
    {
        using (var db = new Mapeo())
        {
            if (db.carrito.Where(x => x.ProductoId == productoId).ToList().Count > 0)
            {
                int carrito = db.carrito.Where(x => x.ProductoId == productoId).Sum(x => x.Cantidad);
                int cantProducto = new DAOProducto().obtenerProducto(productoId).Cantidad_inventario;

                return cantProducto - carrito;
            }
            else
            {
                return new DAOProducto().obtenerProducto(productoId).Cantidad_inventario;
            }
        }
    }

    public void InsertarCarrito(ECarrito carrito)
    {
        using (var db = new Mapeo())
        {
            db.carrito.Add(carrito);
            db.SaveChanges();
        }
    }

    public int CantidadArticulos(string user_id)
    {
        using (var db = new Mapeo())
        {
            return db.carrito.Where(x => x.UserId.Equals(user_id)).Count();
        }
    }
}