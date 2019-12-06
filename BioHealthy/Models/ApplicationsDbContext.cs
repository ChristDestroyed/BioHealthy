
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BioHealthy.Models
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {

        }

        //crear nuestro dbset
        public DbSet<Empleados>Empleado{ get; set; }
        public DbSet<Visitantes>Visitante { get; set; }

        public DbSet<User>Admin { get; set; }
        public DbSet<Cargo>cargo { get; set; }
        public DbSet<Ciudades> Ciudad { get; set; }

        public DbSet<Huellas> Huellas { get; set; }
        public IEnumerable<Empleados> Empleados { get; internal set; }
    }
    public class Empleados
    {
        public int id { get; set; }
        public int documento { get; set; }
        public string nombre { get; set; }
        public string apellidos { get; set; }
        public string cargo { get; set; }
        public string ciudad{get; set;}
    }
    public class Visitantes
    {
        public int id { get; set; }
        public int documento { get; set; }
        public string nombre { get; set; }
        public string apellidos { get; set; }
        public string cargo { get; set; }
        public string ciudad{get; set;}
    }

    public class User
    {
        public int id { get; set; }
        public int email { get; set; }
        public string password { get; set; }

    }
    public class Cargo
    {
        public int Id { get; set; }

        public string Descripcion { get; set; }

    }
    public class Ciudades
    {
        public int Id { get; set; }
        public int Ciudad { get; set; }

    }
    public class Huellas
    {
        public int Id{ get; set; }
        public int Huella { get; set; }
        public int NombreHuella { get; set; }
    }
}
