using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

public class DAOQuejasReclamos
{
    public void guardarQuejasreclamos(EquejasReclamos queja)
    {
        using (var db = new Mapeo())
        {
            db.quejas_reclamos.Add(queja);
            db.SaveChanges();
        }
    }
    public List<EquejasReclamos> verQuejasreclamos()
    {
        using (var db = new Mapeo())
        {
            return db.quejas_reclamos.OrderBy(x => x.Fecha).ToList();
        }
    }
    public void ActualizarQuejareclamo(EquejasReclamos queja)
    {
        using (var db = new Mapeo())
        {
            db.quejas_reclamos.Attach(queja);
            var entry = db.Entry(queja);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }

}