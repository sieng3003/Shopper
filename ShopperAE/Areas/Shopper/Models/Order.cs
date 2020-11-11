namespace ShopperAE.Areas.Shopper.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Order
    {
        public int orderID { get; set; }

        [StringLength(20)]
        public string cusPhone { get; set; }

        public string orderMessage { get; set; }

        [StringLength(50)]
        public string orderDateTime { get; set; }

        [StringLength(50)]
        public string orderStatus { get; set; }

        public virtual Customer Customer { get; set; }
    }
}
