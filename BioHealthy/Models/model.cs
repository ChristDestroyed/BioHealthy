using Microsoft.EntityFrameworkCore;

namespace BioHealthy.Models
{
    public class MyDBcontext : DbContext
    {
        private static DbContextOptions options;

        public MyDBcontext(DbContextOptions<MyDBcontext> options) : base(options)
        {

        }
        public DbSet<Empleados> Empleados { get; set; }
        public DbSet<Visitantes> Visitantes { get; set; }

       
    }
    public class Empleados
    {
        public int Id { get; set; }
        public int Documento { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Cargo { get; set; }
        public string Ciudad { get; set; }



    }
    public class Visitantes
    {
        public int Id { get; set; }
        public int Documento { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Cargo { get; set; }
        public string Ciudad{ get; set;}


    }
}