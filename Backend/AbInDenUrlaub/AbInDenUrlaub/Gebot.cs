using System;
using System.Collections.Generic;

namespace AbInDenUrlaub
{
    public partial class Gebot
    {
        public int GebotId { get; set; }
        public int AngebotId { get; set; }
        public int? UserId { get; set; }
        public int Preis { get; set; }

        public virtual Angebote Angebot { get; set; } = null!;
        public virtual Nutzer? User { get; set; }
    }
}
