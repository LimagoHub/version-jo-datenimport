using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Entities;
using Microsoft.EntityFrameworkCore;

namespace BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Contexts
{
    public class DocumentsDatabaseContext : DbContext
    {
        public DocumentsDatabaseContext()
        {
        }

        public DocumentsDatabaseContext(DbContextOptions<DocumentsDatabaseContext> options)
            : base(options)
        {
        }

        public virtual DbSet<ArchivedFile> ArchivedFile { get; set; }
        public virtual DbSet<JsonDtosAlertsEntities> JsonDtosAlertsEntities { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http: //go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer(
                    "Server=m999ricis002d;Database=AstericsTestDocumentsDatabase;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ArchivedFile>().HasKey(e => e.Guid);
            modelBuilder.Entity<ArchivedFile>().HasMany(e => e.JsonDtosAlertsEntities)
                .WithOne(e => e.ArchivedFile).HasForeignKey(e => e.ArchivedFileGuid);

            modelBuilder.Entity<JsonDtosAlertsEntities>().HasKey(e => new {e.ArchivedFileGuid, e.TimeGenerated});
        }
    }
}