namespace UnescoCrawler.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("WorldHeritage.R_SiteCountry")]
    public partial class R_SiteCountry
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int SiteId { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(2)]
        public string Country { get; set; }
    }
}
