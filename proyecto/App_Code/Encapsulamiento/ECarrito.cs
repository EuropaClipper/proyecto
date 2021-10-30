using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("carrito", Schema = "negocio")]
public class ECarrito
{
    private int id;
    private string userId;
    private int productoId;
    private DateTime fechaAgregado;
    private int cantidad;


    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("user_id")]
    public string UserId { get => userId; set => userId = value; }
    [Column("producto_id")]
    public int ProductoId { get => productoId; set => productoId = value; }
    [Column("fecha_agregado")]
    public DateTime FechaAgregado { get => fechaAgregado; set => fechaAgregado = value; }
    [Column("cantidad")]
    public int Cantidad { get => cantidad; set => cantidad = value; }
}