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
    private double 
}