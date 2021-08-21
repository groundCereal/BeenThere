namespace UnescoCrawler.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WorldHeritage.T_Sites")]
    public partial class T_Sites
    {
        [Key]
        public int SiteId { get; set; }

        [Required]
        [StringLength(255)]
        public string Name { get; set; }

        [Required]
        [StringLength(2)]
        public string Country { get; set; }

        public int CategoryId { get; set; }

        public bool IsInDanger { get; set; }

        public bool IsTransNational { get; set; }

        public virtual L_Category L_Category { get; set; }
    }
}
