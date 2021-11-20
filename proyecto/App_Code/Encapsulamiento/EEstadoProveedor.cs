using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("estado_proveedor", Schema = "negocio")]
public class EEstadoProveedor
{
    [Key, Column("id")]
    public int Id { get; set; }
    [Column("estado")]
    public string Estado { get; set; }
}