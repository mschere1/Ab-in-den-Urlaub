using System;
using System.Collections.Generic;

namespace AbInDenUrlaub
{
    public partial class Rechnungshistorieeintrag
    {
        public int RhId { get; set; }
        public int? UserId { get; set; }
        public int AngebotId { get; set; }
        public bool? Storniert { get; set; }

        public virtual Angebote Angebot { get; set; } = null!;
        public virtual Nutzer? User { get; set; }
    }
}
