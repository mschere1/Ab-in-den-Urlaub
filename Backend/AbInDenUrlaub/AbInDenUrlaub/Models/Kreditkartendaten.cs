using System;
using System.Collections.Generic;

namespace AbInDenUrlaub
{
    public partial class Kreditkartendaten
    {
        public int KddId { get; set; }
        public int? UserId { get; set; }
        public long Kartennummer { get; set; }
        public int Cvv { get; set; }

        public virtual Nutzer? User { get; set; }
    }
}
