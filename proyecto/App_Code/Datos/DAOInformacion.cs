using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de DAOInformacion
/// </summary>
public class DAOInformacion
{
    public List<EInformacionNegocio>obtener(EInformacionNegocio InformacionNegocio)
    {
        using (var db = new Mapeo())
        {
            return db.informacion.ToList();
        }
    } 
    public void actualizarInformacion(EInformacionNegocio InformacionNegocio)
    {
        using(var db = new Mapeo())
        {
            db.informacion.Attach(InformacionNegocio);

            var entry = db.Entry(InformacionNegocio);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }

    }
}