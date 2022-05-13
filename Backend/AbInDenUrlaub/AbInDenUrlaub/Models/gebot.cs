namespace AbInDenUrlaub.Models
{
    public class gebot
    {
        public int angebot_id { get; set; }
        public int fw_id { get; set; }
        public int mietzeitraum_start { get; set; }
        public int mietzeitraum_ende { get; set; }
        public int auktion_enddatum { get; set; }
        public int aktueller_tokenpreis { get; set; }
        public int mietpreis { get; set; }
        public bool stornierbar { get; set; }
    }
}
