using System.Collections.Generic;
using System.Net;
using BioHealthy.Data;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Biohealthy.Controllers
{

    
    
        [Produces("application/json")]
        [Route("api/Empleados")]
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        public class EmpleadosController : Controller
        {
            private readonly AplicationsDbContext _context;

            public EmpleadosController(AplicationsDbContext context)
            {
                _context = context;
            }

        // GET: api/Empleados
        [HttpGet]
        public IEnumerable<Empleados> GetPersonas()
        {
            return _context.Empleados;
        }

       
    }
}