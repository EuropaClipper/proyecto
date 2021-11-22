using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

public class DAOSeguridad
{
    public void InsetarToken(EToken token)
    {
        using(var db = new Mapeo())
        {
            db.token.Add(token);
            db.SaveChanges();
        }
    }
    public EToken ObtenerTokenUsuario(EUsuario usuario)
    {
        return new Mapeo().token.Where(x => x.Id_User.Equals(usuario.Cedula) && x.Fecha_caducidad > DateTime.Now).FirstOrDefault();
    }
    public EToken ValidarToken(string token,EUsuario usuario)
    {
        return new Mapeo().token.Where(x => x.Token_generado.Equals(token) && x.Id_User.Equals(usuario.Cedula)).FirstOrDefault();
    }
    public EToken verificarToken(string token)
    {
        using (var db = new Mapeo())
        {
            return db.token.Where(x => x.Token_generado.Equals(token)).FirstOrDefault();
        }
    }
    public void InsertarAutenticacion(EAutenticacion autenticacion)
    {
        using (var db = new Mapeo())
        {
            db.autenticacion.Add(autenticacion);
            db.SaveChanges();
        }
    }
    public void CerrarSesion(EAutenticacion autentificacion)
    {
        using (var db = new Mapeo())
        {
            db.autenticacion.Attach(autentificacion);
            var entry = db.Entry(autentificacion);
            entry.State = EntityState.Modified;
            db.SaveChanges();
        }
    }
    public EAutenticacion BuscarAutentificacion(string id_usuario, DateTime fecha_inicio)
    {
        using (var db = new Mapeo())
        {
            return db.autenticacion.Where(x => x.UserId.Equals(id_usuario) && x.FechaInicio.Equals(fecha_inicio) && (x.FechaFin == null)).FirstOrDefault();
        }
    }
}