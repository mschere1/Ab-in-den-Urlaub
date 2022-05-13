using System;
using System.Collections.Generic;

namespace AbInDenUrlaub
{
    public partial class Angebote
    {
        public Angebote()
        {
            Gebots = new HashSet<Gebot>();
            Rechnungshistorieeintrags = new HashSet<Rechnungshistorieeintrag>();
        }

        public int AngebotId { get; set; }
        public int FwId { get; set; }
        public DateTime MietzeitraumStart { get; set; }
        public DateTime MietzeitraumEnde { get; set; }
        public DateTime AuktionEnddatum { get; set; }
        public int AktuellerTokenpreis { get; set; }
        public int Mietpreis { get; set; }
        public bool Stornierbar { get; set; }

        public virtual Ferienwohnung Fw { get; set; } = null!;
        public virtual ICollection<Gebot> Gebots { get; set; }
        public virtual ICollection<Rechnungshistorieeintrag> Rechnungshistorieeintrags { get; set; }
    }
}
