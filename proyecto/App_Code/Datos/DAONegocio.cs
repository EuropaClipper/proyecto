using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAONegocio
/// </summary>
public class DAONegocio
{
    public ENegocio obtenerInformacion()
    {
        using (var db = new Mapeo())
        {
            return db.negocio.First();
        }
    }
    public void actualizarInformacion(ENegocio InformacionNegocio)
    {
        using (var db = new Mapeo())
        {
            db.negocio.Attach(InformacionNegocio);

            var entry = db.Entry(InformacionNegocio);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }

    }
}