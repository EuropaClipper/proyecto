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
    private string imagen_uno;
    private string imagen_dos;
    private string imagen_tres;
    private double precio_venta;
    private string id_proveedor;
    private int id_categoria;
    private Boolean estado;
    private string session;
    private DateTime fecha_modificacion;
    private string nombre_categoria;
    private int cantidad_inventario;
    [Key,Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("descripcion")]
    public string Descripcion { get => descripcion; set => descripcion = value; }
    [Column("precio_venta")]
    public double Precio_venta { get => precio_venta; set => precio_venta = value; }
    [Column("id_proveedor")]
    public string Id_proveedor { get => id_proveedor; set => id_proveedor = value; }
    [NotMapped]
    public EProveedor proveedor { get { return new DAOProveedor().ObtenerProveedor(Id_proveedor); } set { } }
    [Column("id_categoria")]
    public int Id_categoria { get => id_categoria; set => id_categoria = value; }
    [NotMapped]
    public ECategoria Categoria { get { return new DAOCategoria().obtenerCategoria(Id_categoria); } set { } }
    [Column("estado")]
    public bool Estado { get => estado; set => estado = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get => fecha_modificacion; set => fecha_modificacion = value; }
    [Column("imagen_uno")]
    public string Imagen_uno { get => imagen_uno; set => imagen_uno = value; }
    [Column("imagen_dos")]
    public string Imagen_dos { get => imagen_dos; set => imagen_dos = value; }
    [Column("imagen_tres")]
    public string Imagen_tres { get => imagen_tres; set => imagen_tres = value; }
    [NotMapped]
    public EInventario inventario { get { return new DAOInventario().obtenenerInvanetario(Id); }set { } }
    [NotMapped]
    public string Nombre_categoria { get { return Categoria.Categoria; } set => nombre_categoria = value; }
    [NotMapped]
    public int Cantidad_inventario { get { return inventario.Cantidad; } set => cantidad_inventario = value; }
    [NotMapped]
    public int id_inventario{ get { return inventario.Id; } set { } }
    [NotMapped]
    public string nombre_proveedor { get { return proveedor.Nombre; } set { } }
    [NotMapped]
    public double precio_compra { get { return inventario.Precio_compra; } set { } }
}