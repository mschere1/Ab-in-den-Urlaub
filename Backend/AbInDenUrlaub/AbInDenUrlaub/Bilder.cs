using System;
using System.Collections.Generic;

namespace AbInDenUrlaub
{
    public partial class Bilder
    {
        public Bilder()
        {
            Wohnungsbilders = new HashSet<Wohnungsbilder>();
        }

        public int BildId { get; set; }
        public byte[] Bild { get; set; } = null!;

        public virtual ICollection<Wohnungsbilder> Wohnungsbilders { get; set; }
    }
}
