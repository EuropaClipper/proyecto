using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("compra", Schema = "compras")]
public class ECompra
{
    private int id;
    private string id_comprador;
    private double total;
    private DateTime fecha_compra;

    [Key,Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("id_comprador")]
    public string Id_comprador { get => id_comprador; set => id_comprador = value; }
    [NotMapped]
    public EUsuario Usuario { get { return new DAOUsuario().ObtenerUsuario(Id_comprador); }set { } }
    [Column("total")]
    public double Total { get => total; set => total = value; }
    [Column("fecha_compra")]
    public DateTime Fecha_compra { get => fecha_compra; set => fecha_compra = value; }
    [Column("estado")]
    public int Id_estado { get; set; }
    [NotMapped]
    public EEstadoCompra Estado { get { return new DAOCompra().ObtenerEstadoCompra(Id_estado); } set { } }
}