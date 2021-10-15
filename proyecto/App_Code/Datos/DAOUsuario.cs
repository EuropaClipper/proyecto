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

}