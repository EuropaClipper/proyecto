using System.Collections.Generic;
using System.Linq;

public class DAOProducto
{
    public EProducto obtenerProducto(int id_producto)
    {
        using (var db = new Mapeo())
        {
            return (from producto in db.producto
                    join categoria in db.categoria on producto.Id_categoria equals categoria.Id

                    select new
                    {
                        producto,
                        categoria
                    }).Where(x=> x.producto.Id.Equals(id_producto)).ToList().Select(m => new EProducto
                    {
                        Id = m.producto.Id,
                        Nombre = m.producto.Nombre,
                        Precio_venta = m.producto.Precio_venta,
                        Descripcion = m.producto.Descripcion,
                        Imagen_uno = m.producto.Imagen_uno,
                        Imagen_dos = m.producto.Imagen_dos,
                        Imagen_tres = m.producto.Imagen_tres,
                        Id_categoria = m.producto.Id_categoria,
                        Nombre_categoria = m.categoria.Categoria
                    }).First();
        }
    }
    public List<EProducto> obtenerProductos()
    {
        using (var db = new Mapeo())
        {
            return (from producto in db.producto
                    join categoria in db.categoria on producto.Id_categoria equals categoria.Id
                    select new
                    {
                        producto,
                        categoria
                    }).ToList().Select(m => new EProducto
                    {
                        Id = m.producto.Id,
                        Nombre = m.producto.Nombre,
                        Precio_venta = m.producto.Precio_venta,
                        Descripcion = m.producto.Descripcion,
                        Imagen_uno = m.producto.Imagen_uno,
                        Imagen_dos = m.producto.Imagen_dos,
                        Imagen_tres = m.producto.Imagen_tres,
                        Id_categoria = m.producto.Id_categoria,
                        Nombre_categoria = m.categoria.Categoria
                    }).OrderBy(x => x.Nombre).ToList();
        }
    }

    public List<EProducto> obtenerProductosFiltrados(string nombre, int[] precio, int categoria)
    {
        List<EProducto> lista = obtenerProductos();
        int minimo = 0, maximo = 0;
        if (precio != null)
        {
            minimo = precio[0];
            maximo = precio[1];
        }
        if (nombre != null && precio != null && categoria != 0)//buscar con los 3 filtros
        {
            return lista.Where(x => x.Nombre.Contains(nombre) && (x.Precio_venta >= minimo && x.Precio_venta <= maximo) && x.Id_categoria.Equals(categoria)).OrderBy(x => x.Nombre).ToList();
        }
        if (nombre != null && precio == null && categoria == 0)//buscar por nombre
        {
            return lista.Where(x => x.Nombre.Contains(nombre)).OrderBy(x => x.Nombre).ToList();
        }
        if (nombre == null && precio != null && categoria == 0)//buscar por precio
        {
            return lista.Where(x => (x.Precio_venta >= precio[0] && x.Precio_venta <= maximo)).OrderBy(x => x.Precio_venta).ToList();
        }
        if (nombre == null && precio == null && categoria != 0)//buscar por categoria
        {
            return lista.Where(x => x.Id_categoria.Equals(categoria)).OrderBy(x => x.Nombre).ToList();
        }
        if (nombre != null && precio != null && categoria == 0)//buscar por nombre y precio
        {
            return lista.Where(x => x.Nombre.Contains(nombre) && (x.Precio_venta >= minimo && x.Precio_venta <= maximo)).OrderBy(x => x.Nombre).ToList();
        }
        if (nombre != null && precio == null && categoria != 0)//buscar por nombre y categoria
        {
            return lista.Where(x => x.Nombre.Contains(nombre) && x.Id_categoria.Equals(categoria)).OrderBy(x => x.Nombre).ToList();
        }
        if (nombre == null && precio != null && categoria != 0)//buscar por precio y categoria
        {
            return lista.Where(x => x.Id_categoria.Equals(categoria) && (x.Precio_venta >= minimo && x.Precio_venta <= maximo)).OrderBy(x => x.Nombre).ToList();

        }
        return null;
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
    public void insertarProducto(EProducto producto)
    {
        using (var db = new Mapeo())
        {
            db.producto.Add(producto);
            db.SaveChanges();
        }
    }
}