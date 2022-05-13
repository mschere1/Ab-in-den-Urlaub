using System.Data.Odbc;

namespace AbInDenUrlaub.Models
{
    public class angebote
    {
        public int angebot_id { get; set; }
        public int fw_ID { get; set; }
        public DateTime mietzeitraum_start { get; set; }
        public DateTime mietzeitraum_ende { get; set; }
        public DateTime auktion_EndDatum { get; set; }
        public int aktuellerTokenpreis { get; set; }
        public int mietpreis { get; set; }
        public bool stornierbar { get; set; }
    }
}
