using System.Collections.Generic;
using BioHealthy.Data;
using Microsoft.AspNetCore.Mvc;

namespace EFNgApp.Controllers
{

    public class EmployeeController : Controller
    {
        EmployeeDataAccessLayer objempleados = new EmployeeDataAccessLayer();

        [HttpGet]
        [Route("api/Empleados/Index")]
        public IEnumerable<Empleados> Index()
        {
            return objempleados.GetAllEmpleados();
        }

        [HttpPost]
        [Route("api/Empleados/Create")]
        public int Create([FromBody] Empleados empleados)
        {
            return objempleados.AddEmpleados(empleados);
        }

        [HttpGet]
        [Route("api/Empleados/Details/{id}")]
        public Empleados Details(int id)
        {
            return objempleados.GetEmpleadosData(id);
        }

        [HttpPut]
        [Route("api/Empleados/Edit")]
        public int Edit([FromBody]Empleados empleados)
        {
            return objempleados.UpdateEmpleados(empleados);
        }

        [HttpDelete]
        [Route("api/Empleados/Delete/{id}")]
        public int Delete(int id)
        {
            return objempleados.DeleteEmpleados(id);
        }

        
    }
}

