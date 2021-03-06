using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


public class DAOCompra
{
    public ECompra InsertarCompra(ECompra nueva_compra)
    {
        using (var db = new Mapeo())
        {
            db.compra.Add(nueva_compra);
            db.SaveChanges();
            return nueva_compra;
        }
    }
    public void InsertarDetallesCompra(EDetallesCompra detalles)
    {
        using (var db = new Mapeo())
        {
            db.detalles_compra.Add(detalles);
            db.SaveChanges();
        }
    }
    public ECompra ObtenerCompra(int id_compra)
    {
        using (var db = new Mapeo())
        {
            return db.compra.Where(x => x.Id.Equals(id_compra)).FirstOrDefault();
        }
    }
    public List<EDetallesCompra> ObtenerDetallesCompra(int id_compra)
    {
        using (var db = new Mapeo())
        {
            return db.detalles_compra.Where(x => x.Id_compra.Equals(id_compra)).ToList();
        }
    }
    public List<EDetallesCompra> ObtenerCompras()
    {
        using (var db = new Mapeo())
        {
            return db.detalles_compra.ToList();
        }
    }
    public EEstadoCompra ObtenerEstadoCompra(int id_estado)
    {
        using (var db = new Mapeo())
        {
            return db.estado_compra.Where(x => x.Id.Equals(id_estado)).FirstOrDefault();
        }
    }
    public void CambiarEstado(int id_factura)
    {
        using(var db = new Mapeo())
        {
            ECompra auxiliar = ObtenerCompra(id_factura);
            auxiliar.Id_estado = (auxiliar.Id_estado == 2) ? 3 : 1;
            db.compra.Attach(auxiliar);
            var entry = db.Entry(auxiliar);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

}