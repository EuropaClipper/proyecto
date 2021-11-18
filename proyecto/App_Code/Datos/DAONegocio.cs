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
    public List<ENegocio> obtener(ENegocio InformacionNegocio)
    {
        using (var db = new Mapeo())
        {
            return db.negocio.ToList();
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