namespace BioHealthy.Models
{
    public class model
    {
        public class MyDBcontext:DbContext
        {
            public DbSet<Empleados>Empleado {get;set;}
            public DbSet<Visitantes> Visitante{get;set;}
            
        }
    }
}