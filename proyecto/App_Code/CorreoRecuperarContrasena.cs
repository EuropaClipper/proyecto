using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public class CorreoRecuperarContrasena
{
    public void enviarmail(string correodestino, string usertoken, string linkacceso)
    {
        //mail
        MailMessage mail = new MailMessage();
        SmtpClient SmtpSever = new SmtpClient("smtp.gmail.com");
        mail.From = new MailAddress("mercadoenlinea1642@gmail.com", "Mercado JP&M");//correo que envia, diplay name
        //SmtpSever.Host = "smtp.gmail.com";//servidor gmail
        mail.Subject = "Recuperación de contraseña";//asunto
        mail.Body = "Para continuar con la recuperación de contraseña dirijase al siguiente link\n" + linkacceso +
                    "\nCuenta con 10 minutos para realizar el cambio de contraseña.\n";
        mail.To.Add(correodestino);//destino del correo
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.Normal;
        //Configuracion del SMTP
        SmtpSever.Port = 587;
        SmtpSever.Credentials = new System.Net.NetworkCredential("mercadoenlinea1642@gmail.com","softwaredeingenieriaproyecto");//correo origen, contra*
        SmtpSever.EnableSsl = true;
        SmtpSever.Send(mail);//eviar-mail
    }
}