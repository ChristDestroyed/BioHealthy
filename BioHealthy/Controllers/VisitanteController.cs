using BioHealthy.Models;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;



namespace BioHealthy.Controllers
{
    [Produces("application/json")]
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    [Route("api/Personas")]
    public class VisitantesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public VisitantesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Empleados
        [HttpGet]
        public IEnumerable<Visitantes> GetEmpleados()
        {
            return _context.Visitante;
        }

    }

}
