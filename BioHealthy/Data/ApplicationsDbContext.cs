using BioHealthy.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace BioHealthy.Data
{
    public class AplicationsDbContext : DbContext 
    {
        public AplicationsDbContext(DbContextOptions<AplicationsDbContext> options) : base(options)
        {
        }
        //crear nuestro dbset
        public DbSet<Empleados>ContactoItems { get; set; }
        public DbSet<Visitantes>VisitanteItems { get; set; }
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
}
