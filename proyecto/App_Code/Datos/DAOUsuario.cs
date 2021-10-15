using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

public class DAOUsuario
{
    public EUsuario IniciarSesion(EUsuario usuario)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.Usuario.Equals(usuario.Usuario) && x.Clave.Equals(usuario.Clave)).FirstOrDefault();
        }
    }
    public bool EstaRegistrado(EUsuario usuario)
    {
        EUsuario nuevo = new EUsuario();
        using(var db = new Mapeo())
        {
            nuevo = db.usuario.Where(x => x.Cedula.Equals(usuario.Cedula)).FirstOrDefault();
        }
        if (nuevo != null) return true;
        return false;
    }
    public void RegistrarUsuario(EUsuario usuario)
    {
        using (var db = new Mapeo())
        {
            db.usuario.Add(usuario);
            db.SaveChanges();
        }
    }
}