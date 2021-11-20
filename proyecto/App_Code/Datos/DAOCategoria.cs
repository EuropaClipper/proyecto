using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DAOCategoria
{
    public ECategoria obtenerCategoria(int id_categoria)
    {
        using(var db = new Mapeo())
        {
            return db.categoria.Where(x => x.Id.Equals(id_categoria)).First();
        }
    }
    public List<ECategoria> obtenerCategoriasDDL()
    {
        using (var db = new Mapeo())
        {
            List<ECategoria> lista = db.categoria.ToList();
            ECategoria cat_cero = new ECategoria();
            cat_cero.Id = 0;
            cat_cero.Categoria = "--> Seleccione una categoria <--";
            lista.Add(cat_cero);
            return lista.OrderBy(x => x.Categoria).ToList();
        }
    }
}