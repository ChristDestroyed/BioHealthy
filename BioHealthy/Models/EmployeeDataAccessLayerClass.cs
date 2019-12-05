using BioHealthy.Data;
using BioHealthy.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EFNgApp.Models
{
    public class EmployeeDataAccessLayer
    {
        MyDBcontext db = new MyDBcontext();

        public IEnumerable<Empleados> GetAllEmpleados()
        {
            try
            {
                return db.Empleados.ToList();
            }
            catch
            {
                throw;
            }
        }

        //To Add new employee record
        public int AddEmployee(Empleados empleados)
        {
            try
            {
                db.Empleados.Add(empleados);
                db.SaveChanges();
                return 1;
            }
            catch
            {
                throw;
            }
        }

        //To Update the records of a particluar employee
        public int UpdateEmpleados(Empleados empleados)
        {
            try
            {
                db.Entry(empleados).State = EntityState.Modified;
                db.SaveChanges();

                return 1;
            }
            catch
            {
                throw;
            }
        }

        //Get the details of a particular employee
        public Empleados GetEmpleadosData(int id)
        {
            try
            {
                Empleados empleados = db.Empleados.Find(id);
                return empleados;
            }
            catch
            {
                throw;
            }
        }

        //To Delete the record of a particular employee
        public int DeleteEmpleados(int id)
        {
            try
            {
                Empleados emp = db.Empleados.Find(id);
                db.Empleados.Remove(emp);
                db.SaveChanges();
                return 1;
            }
            catch
            {
                throw;
            }
        }

        //To Get the list of Cities

    }
}
