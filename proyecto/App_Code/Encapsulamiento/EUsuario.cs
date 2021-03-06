using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("usuario", Schema = "usuario")]
public class EUsuario
{
    private string cedula;
    private string nombre;
    private string usuario;
    private string clave;
    private string correo;
    private string telefono;
    private string direccion;
    private string cvv;
    private int id_rol;
    private string session;
    private DateTime fecha_modificacion;
    [Key,Column("cedula")]
    public string Cedula { get => cedula; set => cedula = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("usuario")]
    public string Usuario { get => usuario; set => usuario = value; }
    [Column("clave")]
    public string Clave { get => clave; set => clave = value; }
    [Column("correo")]
    public string Correo { get => correo; set => correo = value; }
    [Column("telefono")]
    public string Telefono { get => telefono; set => telefono = value; }
    [Column("direccion")]
    public string Direccion { get => direccion; set => direccion = value; }
    [Column("cvv")]
    public string Cvv { get => cvv; set => cvv = value; }
    [Column("id_rol")]
    public int Id_rol { get => id_rol; set => id_rol = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get => fecha_modificacion; set => fecha_modificacion = value; }
}