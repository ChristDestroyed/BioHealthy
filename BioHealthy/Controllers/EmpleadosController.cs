using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BioHealthy.Models.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace BioHealthy.Controllers
{

   [Route("api/[controller]")]
   public class EmpleadosController : Controller
    {

        private Models.MyDBContext db;

        public EmpleadosController(Models.MyDBContext context)

         

        {
            db = context;
        }

        [HttpGet("[action]")]
        public IEnumerable<ViewEmpleados>Empleados()
        {
            List<ViewEmpleados> lst = (from d in db.Empleados
                                       select new ViewEmpleados
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