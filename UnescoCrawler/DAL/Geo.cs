namespace UnescoCrawler.DAL
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Geo : DbContext
    {
        public Geo()
            : base("name=Geo")
        {
        }

        public virtual DbSet<T_Country> T_Country { get; set; }
        public virtual DbSet<T_SupraNationalGroups> T_SupraNationalGroups { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<T_Country>()
                .Property(e => e.Code)
                .IsUnicode(false);

            modelBuilder.Entity<T_Country>()
                .Property(e => e.Code3)
                .IsUnicode(false);

            modelBuilder.Entity<T_Country>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<T_Country>()
                .Property(e => e.CompleteName)
                .IsUnicode(false);

            modelBuilder.Entity<T_SupraNationalGroups>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<T_SupraNationalGroups>()
                .Property(e => e.Status)
                .IsFixedLength()
                .IsUnicode(false);
        }
    }
}
