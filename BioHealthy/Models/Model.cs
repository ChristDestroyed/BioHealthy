using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BioHealthy.Models
{
    public class MyDBContext : DbContext
    {
        public MyDBContext(DbContextOptions<MyDBContext> options) : base(options)
        {

        }
        public DbSet<Empleado> Empleados { get; set; }
    }
    public class Empleado
    {
        public int Id { get; set; }
        public int Documento { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Cargo { get; set; }
        public string Ciudad { get; set; }
    }
}
