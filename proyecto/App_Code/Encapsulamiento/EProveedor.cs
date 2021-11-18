using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("proveedor", Schema = "negocio")]



public class EProveedor
{
    private string id;
    private string nombre;
    private string empresa;
    private string session;
    private string telefono;
    private DateTime fecha_modificacion;
    [Key, Column("id")]
    public string Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("empresa")]
    public string Empresa { get => empresa; set => empresa = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("telefono")]
    public string Telefono { get => telefono; set => telefono = value; }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get => fecha_modificacion; set => fecha_modificacion = value; }
}