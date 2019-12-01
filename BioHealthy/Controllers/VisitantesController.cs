using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BioHealthy.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace BioHealthy.Controllers
{

   [Route("api/[controller]")]
   public class VisitantesController : Controller
    {

        private Models.MyDBContext db;

        public VisitantesController(Models.MyDBContext context)

         

        {
            db = context;
        }

        [HttpGet("[action]")]
        public IEnumerable<ViewEmpleados>Visitantes()
        {
            List<ViewVisitantes> lst = (from d in db.Visitantes
                                       select new ViewVisitantes
                                       {
                                           Id = d.Id,
                                           Documento = d.Documento,
                                           Nombre = d.Nombres,
                                           Apellido = d.Apellidos,
                                           Cargo = d.Cargo,
                                           Ciudad =d.Ciudad,
                                       }).ToList();


            return lst;

        }
       
    }
}
