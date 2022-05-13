using System;
using System.Collections.Generic;

namespace AbInDenUrlaub
{
    public partial class Wohnungsbilder
    {
        public int WgbId { get; set; }
        public int FwId { get; set; }
        public int BildId { get; set; }

        public virtual Bilder Bild { get; set; } = null!;
        public virtual Ferienwohnung Fw { get; set; } = null!;
    }
}
