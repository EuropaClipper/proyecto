using System.Data.Entity;
public class Mapeo : DbContext
{
    static Mapeo()
    {
        Database.SetInitializer<Mapeo>(null);
    }
    public Mapeo() : base("name=mercado") { }
    private readonly string schema;
    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        modelBuilder.HasDefaultSchema(this.schema);
        base.OnModelCreating(modelBuilder);
    }
    public virtual DbSet<EUsuario> usuario { get; set; }
}