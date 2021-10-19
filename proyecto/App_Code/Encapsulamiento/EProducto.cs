using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("producto", Schema = "negocio")]
public class EProducto
{
    private int id;
    private string nombre;
    private string descripcion;
    private string imagen;
    private double precio_venta;
    private string id_proveedor;
    private int id_categoria;
    private Boolean estado;
    private string session;
    private DateTime fecha_modificacion;
    private string nombre_categoria;
    [Key,Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("descripcion")]
    public string Descripcion { get => descripcion; set => descripcion = value; }
    [Column("imagen")]
    public string Imagen { get => imagen; set => imagen = value; }
    [Column("precio_venta")]
    public double Precio_venta { get => precio_venta; set => precio_venta = value; }
    [Column("id_proveedor")]
    public string Id_proveedor { get => id_proveedor; set => id_proveedor = value; }
    [Column("id_categoria")]
    public int Id_categoria { get => id_categoria; set => id_categoria = value; }
    [Column("estado")]
    public bool Estado { get => estado; set => estado = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get => fecha_modificacion; set => fecha_modificacion = value; }
    [NotMapped]
    public string Nombre_categoria { get => Nombre_categoria; set => Nombre_categoria = value; }
}