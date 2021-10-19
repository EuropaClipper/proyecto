using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
[Serializable]
[Table("categoria", Schema = "negocio")]
public class ECategoria
{
    private int id;
    private string categoria;
    private string session;
    private DateTime fecha_modificacion;
    [Key, Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("categoria")]
    public string Categoria { get => categoria; set => categoria = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("fecha_modificacion")]
    public DateTime Fecha_modificacion { get => fecha_modificacion; set => fecha_modificacion = value; }
}