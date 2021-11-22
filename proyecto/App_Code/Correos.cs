using System;
using System.Collections.Generic;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public class Correos
{
    public void EnviarCorreoCompra(string correodestino,int id_compra,int estado)
    {
        //datos de configuracion
        string servidor = ConfigurationManager.AppSettings["ServidorCorreo"];
        int puerto = int.Parse(ConfigurationManager.AppSettings["PuertoCorreo"]);
        string correoDestino = ConfigurationManager.AppSettings["CorreoOrigen"]; ;
        string contrasena = ConfigurationManager.AppSettings["ContrasenaCorreo"];
        try
        {
            using (MailMessage mensaje = new MailMessage())
            {
                mensaje.To.Add(correodestino);
                mensaje.From = new MailAddress(correoDestino, "Mercado JP&M");
                string txt = "";
                switch (estado)
                {
                    case 1:
                        mensaje.Subject = "Compra exitosa";
                        txt = "<h5>Gracias por su compra</h5>";
                        break;
                    case 2:
                        mensaje.Subject = "Compra en proceso";
                        txt = "<h5>Se ha registrado una compra, una vez esté lista se enviará un correo de confirmacion</h5>";
                        break;
                    case 3:
                        mensaje.Subject = "Compra lista para recoger";
                        txt = "<h5>Su compra se encuentra lista para ser recogida</h5><h5>Acerquese a nuestro establecimiento y reclame su pedido.</h5>";
                        break;
                }    
                string productos = "<table style=\"border:1px solid;border-collapse:collapse;\"><tr><th style=\"border:1px solid\">Cantidad</th><th style=\"border:1px solid\">Producto</th><th style=\"border:1px solid\">Precio</th></tr>";
                List<EDetallesCompra> detalles = new DAOCompra().ObtenerDetallesCompra(id_compra);
                foreach (var item in detalles)
                {
                    productos += "<tr><td style=\"border:1px solid\">" + item.Cantidad+ "</td><td style=\"border:1px solid\">" + item.Producto.Nombre+ "</td><td style=\"border:1px solid\">" + item.Precio_compra.ToString("C")+"</td></tr>";
                }
                productos += "</table>";
                mensaje.Body = txt + productos
                    +"<h4>total de compra: "+detalles[0].Compra.Total.ToString("C")+"</h4>";
                mensaje.IsBodyHtml = true;
                using (SmtpClient smtp = new SmtpClient(servidor, puerto))
                {
                    smtp.Credentials = new NetworkCredential(correoDestino, contrasena);
                    smtp.EnableSsl = true;
                    smtp.Send(mensaje);
                }
            }
        }
        catch (Exception ex) { throw; }
    }
}