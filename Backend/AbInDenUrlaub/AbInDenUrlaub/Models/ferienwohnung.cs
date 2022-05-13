namespace AbInDenUrlaub.Models
{
    public class ferienwohnung
    {
        public int fw_id { get; set; }
        public int user_id { get; set; }
        public String strasse { get; set; }
        public int hausnummer { get; set; }
        public String ort { get; set; }
        public int plz { get; set; }
        public int wohnflaeche { get; set; }
        public int anzzimmer { get; set; }
        public int anzbetten { get; set; }
        public int anzbaeder { get; set; }
        public bool wifi { get; set; }
        public bool garten { get; set; }
        public bool balkon { get; set; }
        public String beschreibung { get; set; }
    }
}
