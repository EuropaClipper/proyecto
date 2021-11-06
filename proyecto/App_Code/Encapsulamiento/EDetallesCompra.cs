using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("detalles_compra", Schema = "compras")]
public class EDetallesCompra
{
    private int id;
    private int id_compra;
    private int id_producto;
    private int cantidad;
    private double precio_compra;
    private double total;
    [Key,Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("id_compra")]
    public int Id_compra { get => id_compra; set => id_compra = value; }
    [Column("id_producto")]
    public int Id_producto { get => id_producto; set => id_producto = value; }
    [Column("cantidad")]
    public int Cantidad { get => cantidad; set => cantidad = value; }
    [Column("precio_compra")]
    public double Precio_compra { get => precio_compra; set => precio_compra = value; }
    [Column("total")]
    public double Total { get => total; set => total = value; }
}