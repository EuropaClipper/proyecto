using System.Data.Entity;
public class Mapeo : DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }
    public Mapeo() : base("name=mercado") { }
    private readonly string schema;
    internal object tabla_quejas;

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        modelBuilder.HasDefaultSchema(this.schema);
        base.OnModelCreating(modelBuilder);
    }
    public virtual DbSet<EUsuario> usuario { get; set; }
    public virtual DbSet<ENegocio> negocio { get; set; }
    public virtual DbSet<EDatosBancarios> datosBancarios { get; set; }
    public virtual DbSet<ECategoria> categoria { get; set; }
    public virtual DbSet<EProducto> producto { get; set; }
    public virtual DbSet<EToken> token { get; set; }
    public virtual DbSet<EInventario> inventario { get; set; }
    public virtual DbSet<ECarrito> carrito { get; set; }
    public virtual DbSet<ECompra> compra { get; set; }
    public virtual DbSet<EDetallesCompra> detalles_compra { get; set; }
    public virtual DbSet<EInformacionNegocio> informacion { get; set; }
    public virtual DbSet<EquejasReclamos> quejasR { get; set; }



}