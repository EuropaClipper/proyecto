using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("token_recuperacion", Schema = "seguridad")]
public class EToken
{
    private int id;
    private string user_id;
    private string token_generado;
    private DateTime fecha_inicio;
    private DateTime fecha_caducidad;
    private string msj_error;
    private Boolean estado;
    [Key,Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("id_user")]
    public string Id_User { get => user_id; set => user_id = value; }
    [Column("token_generado")]
    public string Token_generado { get => token_generado; set => token_generado = value; }
    [Column("fecha_inicio")]
    public DateTime Fecha_inicio { get => fecha_inicio; set => fecha_inicio = value; }
    [Column("fecha_caducidad")]
    public DateTime Fecha_caducidad { get => fecha_caducidad; set => fecha_caducidad = value; }
    [NotMapped]
    public string Msj_error { get => msj_error; set => msj_error = value; }
    [Column("estado")]
    public bool Estado { get => estado; set => estado = value; }
}