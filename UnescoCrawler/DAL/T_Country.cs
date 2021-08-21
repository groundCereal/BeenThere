namespace UnescoCrawler.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Geo.T_Country")]
    public partial class T_Country
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(2)]
        public string Code { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(3)]
        public string Code3 { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(100)]
        public string Name { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(255)]
        public string CompleteName { get; set; }
    }
}
