using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de EquejasReclamos
/// </summary>
/// 

[Serializable]
[Table("quejasR", Schema = "compras")]
public class EquejasReclamos
{
    private int id_quejas;
    private string nombre;
    private string email;
    private string mensaje;
    private string imagen;
    [Key]
    [Column("id_quejas")]
    public int Id_quejas { get => id_quejas; set => id_quejas = value; }
    [Column("nombre")]
    public string Nombre { get => nombre; set => nombre = value; }
    [Column("email")]
    public string Email { get => email; set => email = value; }
    [Column("mensaje")]
    public string Mensaje { get => mensaje; set => mensaje = value; }
    [Column("imagen")]
    public string Imagen { get => imagen; set => imagen = value; }

 
}