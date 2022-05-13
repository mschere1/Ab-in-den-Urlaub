using System;
using System.Collections.Generic;

namespace AbInDenUrlaub
{
    public partial class Bewertung
    {
        public int BewertungId { get; set; }
        public int? UserId { get; set; }
        public int FwId { get; set; }
        public int Anzsterne { get; set; }
        public string? Kommentar { get; set; }

        public virtual Ferienwohnung Fw { get; set; } = null!;
        public virtual Nutzer? User { get; set; }
    }
}
