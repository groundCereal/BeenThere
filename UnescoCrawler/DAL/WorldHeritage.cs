namespace UnescoCrawler.DAL
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class WorldHeritage : DbContext
    {
        public WorldHeritage()
            : base("name=WorldHeritage")
        {
        }

        public virtual DbSet<L_Category> L_Category { get; set; }
        public virtual DbSet<T_Sites> T_Sites { get; set; }
        public virtual DbSet<R_SiteCountry> R_SiteCountry { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<L_Category>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<L_Category>()
                .Property(e => e.Status)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<L_Category>()
                .HasMany(e => e.T_Sites)
                .WithRequired(e => e.L_Category)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<T_Sites>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<T_Sites>()
                .Property(e => e.Country)
                .IsUnicode(false);

            modelBuilder.Entity<R_SiteCountry>()
                .Property(e => e.Country)
                .IsUnicode(false);
        }
    }
}
