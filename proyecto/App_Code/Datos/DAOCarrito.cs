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
        using (var db = new Mapeo())
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
    public void ActualizarCarrito(ECarrito carrito)
    {
        using (var db = new Mapeo())
        {
            db.carrito.Attach(carrito);
            var entry = db.Entry(carrito);
            entry.State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
    public ECarrito Existe(int id_producto, string cedula)
    {
        using (var db = new Mapeo())
        {
            return db.carrito.Where(x => x.ProductoId.Equals(id_producto) && x.UserId.Equals(cedula)).FirstOrDefault();
        }
    }
    public List<EProducto> ProductosEnCarrito(EUsuario user)
    {
        using (var db = new Mapeo())
        {
            return (from carrito in db.carrito
                    join producto in db.producto on carrito.ProductoId equals producto.Id
                    select new
                    {
                        carrito,
                        producto
                    }).ToList().Where(x => x.carrito.UserId.Equals(user.Cedula)).Select(m => new EProducto
                    {
                        Id = m.producto.Id,
                        Imagen_uno = m.producto.Imagen_uno,
                        Nombre = m.producto.Nombre,
                        Precio_venta = (m.producto.Precio_venta * m.carrito.Cantidad),
                        Cantidad_inventario = m.carrito.Cantidad
                    }).ToList();
        }
    }
    public void EliminarCarrito(ECarrito carrito)
    {
        using (var db = new Mapeo())
        {
            db.carrito.Attach(carrito);
            var entry = db.Entry(carrito);
            entry.State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
