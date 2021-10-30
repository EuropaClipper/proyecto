using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class DAOCarrito
{
    public void InsertarCarrito(ECarrito carrito)
    {
        using (var db = new Mapeo())
        {
            db.carrito.Add(carrito);
            db.SaveChanges();
        }
    }
    public List<ECarrito>obtenerCarrito(ECarrito Carrito)
    {
        using(var db =new Mapeo())
        {
            return db.carrito.ToList();
        }
    }
}