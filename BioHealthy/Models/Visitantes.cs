namespace BioHealthy.Models
{
    public class Visitantes
    {
        public int Id { get; internal set; }
        public int Documento { get; internal set; }
        public string Nombres { get; internal set; }
        public string Apellidos { get; internal set; }
        public string Cargo { get; internal set; }
        public string Ciudad { get; internal set; }
    }
}