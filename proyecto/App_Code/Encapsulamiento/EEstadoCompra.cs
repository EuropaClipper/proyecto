using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("estado_compra", Schema = "compras")]
public class EEstadoCompra
{
   [Key,Column("id")]
    public int Id { get; set; }
    [Column("estado")]
    public string Estado { get; set; }
}