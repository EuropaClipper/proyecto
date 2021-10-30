using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("carrito", Schema = "negocio")]
public class ECarrito
{
    private int id;
    private int cantidad;
    private string nombreProducto;
    private string imagen_uno;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("cantidad")]
    public int Cantidad { get => cantidad; set => cantidad = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("imagen_uno")]
    public string Imagen_uno { get => imagen_uno; set => imagen_uno = value; }
}