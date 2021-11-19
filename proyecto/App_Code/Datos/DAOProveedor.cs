﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


public class DAOProveedor
{

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
}