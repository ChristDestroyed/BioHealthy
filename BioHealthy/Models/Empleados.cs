﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BioHealthy.Models
{
    public class Empleados
    {
        public int Id { get; set; }
        
        public string Documento { get; set; }

        public  string  Nombre  { get; set; }
        public string Apellido { get; set; }
        public string Cargo { get; set; }
    }
}
