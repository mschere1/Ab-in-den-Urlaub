namespace AbInDenUrlaub.Models
{
    public class nutzer
    {
        public int user_id { get; set; }
        public string username { get; set; }
        public string name  { get; set; }
        public string nachname  { get; set; }
        public string passwort { get; set; }
        public string email { get; set; }
        public int tokenstand { get; set; }
        public bool vermieter  { get; set; }
        public bool admin { get; set; }
    }

}
