using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class DAOInventario
{
    public List<EInventario> ObtenerInventario()
    {
        using (var db = new Mapeo())
        {
            return db.inventario.ToList();
        }
    }
    public EProveedor ObtenerProveedor(string id)
    {
        using(var db = new Mapeo())
        {
            return db.proveedor.Where(x => x.Id.Equals(id)).FirstOrDefault();
        }
    }
}