using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("datos_bancarios", Schema = "usuario")]
public class EDatosBancarios
{
    private string cvv;
    private string titular;
    private string numero_tarjeta;
    private string fecha_caducidad;
    private string session;
    private DateTime fecha_modificacion;
    [Key,Column("cvv")]
    public string Cvv { get => cvv; set => cvv = value; }
    [Column("titular")]
    public string Titular { get => titular; set => titular = value; }
    [Column("numero_tarjeta")]
    public string Numero_tarjeta { get => numero_tarjeta; set => numero_tarjeta = value; }
    [Column("fecha_caducidad")]
    public string Fecha_caducidad { get => fecha_caducidad; set => fecha_caducidad = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get => fecha_modificacion; set => fecha_modificacion = value; }
}