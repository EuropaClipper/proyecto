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

}