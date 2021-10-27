using System;
using System.Collections.Generic;
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
}