using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DAOCompra
{
    public ECompra InsertarCompra(ECompra nueva_compra)
    {
        using(var db = new Mapeo())
        {
            db.compra.Add(nueva_compra);
            db.SaveChanges();
            return nueva_compra;
        }
    }
    public void InsertarDetallesCompra(EDetallesCompra detalles)
    {
        using(var db=new Mapeo())
        {
            db.detalles_compra.Add(detalles);
            db.SaveChanges();
        }
    }
}