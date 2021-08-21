namespace UnescoCrawler.DAL
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Geo.T_SupraNationalGroups")]
    public partial class T_SupraNationalGroups
    {
        [Key]
        [Column(Order = 0)]
        public int SupraNationalGroupId { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(100)]
        public string Name { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(1)]
        public string Status { get; set; }
    }
}
