namespace AbInDenUrlaub.Models
{
    public class rechnungshistorieeintrag
    {
        public int rh_id { get; set; }
        public int user_id { get; set; }
        public int angebot_id { get; set; }
        public bool storniert { get; set; }
    }
}
