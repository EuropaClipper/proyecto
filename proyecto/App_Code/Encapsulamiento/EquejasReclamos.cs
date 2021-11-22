using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("quejas_reclamos", Schema = "compras")]
public class EquejasReclamos
{
    private int id;
    private string descripcion;
    private string imagen;
    private Boolean estado;
    [Key, Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("id_factura")]
    public int Id_Factura { get; set; }
    [NotMapped]
    public ECompra Compra { get { return new DAOCompra().ObtenerCompra(Id_Factura); } set { } }
    [Column("descripcion")]
    public string Descripcion { get => descripcion; set => descripcion = value; }
    [Column("imagen")]
    public string Imagen { get => imagen; set => imagen = value; }
    [Column("estado")]
    public bool Estado { get => estado; set => estado = value; }
    [NotMapped]
    public string NombreEstado { get { return (Estado == true) ? "pendiente" : "revisada"; } set { } }
    [NotMapped]
    public string NombreComprador { get { return Compra.Usuario.Nombre; } set { } }
    [Column("fecha")]
    public DateTime Fecha { get; set; }
}