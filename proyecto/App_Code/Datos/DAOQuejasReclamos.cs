using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOQuejasReclamos
/// </summary>
public class DAOQuejasReclamos
{

    public void guardarQuejasreclamos(EquejasReclamos prq)
    {
        using (var db = new Mapeo())
        {
            db.quejasR.Add(prq);
            db.SaveChanges();
        }
    }

}