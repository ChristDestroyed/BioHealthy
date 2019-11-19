using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BioHealthy.Models.ViewModels
{
    public class ViewEmpleados
    {
        public int Id { get; set; }
        public int Documento { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Cargo { get; set; }

    }
}
