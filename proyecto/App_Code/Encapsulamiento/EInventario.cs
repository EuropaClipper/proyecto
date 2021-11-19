using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
[Serializable]
[Table("inventario", Schema = "negocio")]
public class EInventario
{
    private int id;
    private int id_producto;
    private double precio_compra;
    private int cantidad;
    private string session;
    private DateTime fecha_modificacion;
    [Key,Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("id_producto")]
    public int Id_producto { get => id_producto; set => id_producto = value; }
    [NotMapped]
    public EProducto Producto { get { return new DAOProducto().obtenerProducto(id_producto); } set { } }
    [Column("precio_compra")]
    public double Precio_compra { get => precio_compra; set => precio_compra = value; }
    [Column("cantidad")]
    public int Cantidad { get => cantidad; set => cantidad = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get => fecha_modificacion; set => fecha_modificacion = value; }
}