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
    public int CantidadEnCarrito(string id_usuario)
    {
        using(var db = new Mapeo())
        {
            return db.carrito.Where(x => x.UserId.Equals(id_usuario)).Count();
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
    public List<EProducto> ProductosEnCarrito(int id_usuario)
    {
        using(var db = new Mapeo())
        {
            return (from carrito in db.carrito
                    join usuario in db.usuario on carrito.UserId equals usuario.Cedula
                    join producto in db.producto on carrito.ProductoId equals producto.Id
                    select new
                    {
                        carrito,
                        usuario,
                        producto
                    }).ToList().Select(m => new EProducto
                    {
                        Id = m.producto.Id,

                    }).ToList();
        }
    }
}