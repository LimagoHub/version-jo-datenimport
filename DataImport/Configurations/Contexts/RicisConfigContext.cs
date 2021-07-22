using BBk.Rc1.Ricis.Configurations.Entities;
using Microsoft.EntityFrameworkCore;

namespace BBk.Rc1.Ricis.Configurations.Contexts
{
    public class RicisConfigContext : DbContext
    {
        public RicisConfigContext()
        {
        }

        public RicisConfigContext(DbContextOptions<RicisConfigContext> options)
            : base(options)
        {
        }

        public virtual DbSet<TblConfig> TblConfig { get; set; }
        public virtual DbSet<TblConfigInstance> TblConfigInstance { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http: //go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer(
                    "Server=m999ricis002d;Database=AstericsTestConfig;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<TblConfig>(entity =>
            {
                entity.HasKey(e => e.Parameter);

                entity.ToTable("tblConfig");

                entity.Property(e => e.Parameter)
                    .HasMaxLength(50)
                    .ValueGeneratedNever();

                entity.Property(e => e.Type).HasMaxLength(50);
            });

            modelBuilder.Entity<TblConfigInstance>(entity =>
            {
                entity.HasKey(e => new {e.Instance, e.Parameter});

                entity.ToTable("tblConfigInstance");

                entity.Property(e => e.Instance).HasMaxLength(50);

                entity.Property(e => e.Parameter).HasMaxLength(50);

                entity.HasOne(d => d.ParameterNavigation)
                    .WithMany(p => p.TblConfigInstance)
                    .HasForeignKey(d => d.Parameter)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_tblConfigInstance_tblConfig");
            });
        }
    }
}