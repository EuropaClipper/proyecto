using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


public class DAOProveedor
{
    public List<EProveedor> ObtenerProveedores()
    {
        using(var db = new Mapeo())
        {
            return db.proveedor.ToList();
        }
    }
    public EProveedor ObtenerProveedor(string id)
    {
        using (var db = new Mapeo())
        {
            return db.proveedor.Where(x => x.Id.Equals(id)).FirstOrDefault();
        }
    }
    public void actualizarproveedor(EProveedor proveedor)
    {
        using (var db = new Mapeo())
        {
            db.proveedor.Attach(proveedor);
            var entry = db.Entry(proveedor);
            entry.State = EntityState.Modified;

            db.SaveChanges();
        }

    }
    public void elimnarProveedor(EProveedor proveedor)
    {
        using (var db = new Mapeo())
        {
            db.proveedor.Attach(proveedor);
            var entry = db.Entry(proveedor);
            entry.State = EntityState.Deleted;
            db.SaveChanges();
        }
    }
    public void insertarProveedor(EProveedor proveedor)
    {
        using(var db = new Mapeo())
        {
            db.proveedor.Add(proveedor);
            db.SaveChanges();
        }
    }
    public EEstadoProveedor EstadoProveedor(int id_estado)
    {
        using(var db = new Mapeo())
        {
            return db.estado_proveedor.Where(x => x.Id.Equals(id_estado)).First();
        }
    }
    public List<EProveedor> obtenerProvedoresDDL()
    {
        using (var db = new Mapeo())
        {
            List<EProveedor> lista = db.proveedor.ToList();
            EProveedor cat_cero = new EProveedor();
            cat_cero.Id ="0";
            cat_cero.Nombre = "--> Seleccione una categoria <--";
            lista.Add(cat_cero);
            return lista.OrderBy(x => x.Nombre).ToList();
        }
    }
}