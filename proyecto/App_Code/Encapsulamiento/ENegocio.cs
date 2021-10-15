using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("negocio", Schema = "negocio")]
public class ENegocio
{
    private string nit;
    private string nombre;
    private string telefono;
    private string direccion;
    private string session;
    private DateTime fecha_modificacion;
    [Key,Column("nit")]
    public string Nit { get => nit; set => nit = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("telefono")]
    public string Telefono { get => telefono; set => telefono = value; }
    [Column("direccion")]
    public string Direccion { get => direccion; set => direccion = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get => fecha_modificacion; set => fecha_modificacion = value; }
}
