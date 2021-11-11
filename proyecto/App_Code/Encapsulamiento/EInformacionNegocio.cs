using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

[Serializable]
[Table("informacion_negocio", Schema = "negocio")]
public class EInformacionNegocio
{
    private int id;
    private string nombreNegocio;
    private string tel;
    private string dir;
    private string nit;

    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("nombre")]
    public string NombreNegocio { get => nombreNegocio; set => nombreNegocio = value; }
    [Column("telefono")]
    public string Tel { get => tel; set => tel = value; }
    [Column("direccion")]
    public string Dir { get => dir; set => dir = value; }
    [Column("nit")]
    public string Nit { get => nit; set => nit = value; }
}