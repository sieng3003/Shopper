namespace ShopperAE.Areas.Administrator.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Administrator")]
    public class Administrator
    {
        [Key]
        [StringLength(500)]
        [Required(ErrorMessage ="Mời bạn nhập username")]
        public string adAcc { get; set; }

        [StringLength(500)]
        [Required(ErrorMessage = "Mời bạn nhập password")]
        public string adPass { get; set; }
     
    }
}
