using System.Collections.Generic;
using System.Data.Entity;
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
    public EUsuario ObtenerUsuario(string usuario)
    {
        using (var db = new Mapeo())
        {
            return db.usuario.Where(x => x.Cedula.Equals(usuario)).First();
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
    public void ActualizarUsuario(EUsuario usuario)
    {
        using(var db = new Mapeo())
        {
            db.usuario.Attach(usuario);
            var entry = db.Entry(usuario);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
    public EUsuario ValidarUsuarioParaToken(EUsuario usuario)
    {
        return new Mapeo().usuario.Where(x=> x.Correo.Equals(usuario.Correo)).FirstOrDefault();
    }
}