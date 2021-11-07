using System;
using System.Security.Cryptography;
using System.Text;
using Newtonsoft.Json;

public class RecuperarContraseña
{
    public EToken Enviar_token(EUsuario usuario)
    {
        EToken token = new EToken();
        usuario = new DAOUsuario().ValidarUsuarioParaToken(usuario);
        if (usuario != null)
        {
            if (new DAOSeguridad().ObtenerTokenUsuario(usuario) != null)
                token.Msj_error = "Ya se cuenta con una recuperación de contraseña activa. Espere a que se pueda realizar una nueva.";
            else
            {
                token.Id_User = usuario.Cedula;
                token.Fecha_inicio = DateTime.Now;
                token.Fecha_caducidad = DateTime.Now.AddMinutes(5);
                token.Token_generado = encriptar(JsonConvert.SerializeObject(token));
                new DAOSeguridad().InsetarToken(token);
                CorreoRecuperarContrasena correo = new CorreoRecuperarContrasena();
                string linkacceso = "Su codigo de acceso es: http://localhost:50792/Vista/RecuperarContrasena.aspx?token=" + token.Token_generado;
                correo.enviarmail(usuario.Correo, token.Token_generado, linkacceso);
                token.Msj_error = "Dirijase a su correo para continuar con la recuperación de contraseña";
            }
        }
        else token.Msj_error = "Verifique que el correo sea el mismo con que se registró.";
        return token;
    }
    private string encriptar(string input)
    {
        SHA256CryptoServiceProvider provider = new SHA256CryptoServiceProvider();
        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashedBytes = provider.ComputeHash(inputBytes);
        StringBuilder output = new StringBuilder();
        for (int i = 0; i < hashedBytes.Length; i++)
            output.Append(hashedBytes[i].ToString("x2").ToLower());
        return output.ToString();
    }  
}