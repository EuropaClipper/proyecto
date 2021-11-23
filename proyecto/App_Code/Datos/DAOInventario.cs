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
    public EInventario obtenenerInvanetario(int id_producto)
    {
        using (var db = new Mapeo())
        {
            return db.inventario.Where(x => x.Id_producto.Equals(id_producto)).FirstOrDefault();
        }
    }
}