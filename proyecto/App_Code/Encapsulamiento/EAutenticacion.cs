using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Serializable]
[Table("autenticacion", Schema = "seguridad")]
public class EAutenticacion
{
    private int id;
    private string userId;
    private string ip;
    private string mac;
    private string session;
    private DateTime fechaInicio;
    private Nullable<DateTime> fechaFin;


    [Key]
    [Column("id")]
    public int Id { get => id; set => id = value; }
    [Column("user_id")]
    public string UserId { get => userId; set => userId = value; }
    [Column("ip")]
    public string Ip { get => ip; set => ip = value; }
    [Column("mac")]
    public string Mac { get => mac; set => mac = value; }
    [Column("session")]
    public string Session { get => session; set => session = value; }
    [Column("fecha_inicio")]
    public DateTime FechaInicio { get => fechaInicio; set => fechaInicio = value; }
    [Column("fecha_fin")]
    public DateTime? FechaFin { get => fechaFin; set => fechaFin = value; }
}