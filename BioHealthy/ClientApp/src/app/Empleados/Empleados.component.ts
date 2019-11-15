import { Component } from '@angular/core';

@Component({
  selector: 'app-empleados',
  templateUrl: './empleados.component.html',
  styleUrls: ['./empleados.component.css']
})
export class EmpleadosComponent {
  msg: string;
  documento: string;
  nombre: string;
  apellido: string;
  cargo: string;

  employees = [
    {documento:'123',nombre:"sebastian",apellido:"castro",cargo:"desarrollo"},

  ];

  model: any = {};
  model2: any = {};
  hideUpdate: boolean = true;

  addEmployee(): void {
    this.employees.push(this.model);
    this.model = {};
    this.msg='El Registro Fue Exitoso'
  }
  deleteEmployee(i): void {
    var answer = confirm('Esta Seguro de Querer Eliminarlo')
    if (answer) {
      this.employees.splice(i, 1);
    }
  }

  myValue;
  editEmployee(i): void {
    this.hideUpdate = false;
    this.model2.documento = this.employees[i].documento;
    this.model2.nombre = this.employees[i].nombre;
    this.model2.apellido = this.employees[i].apellido;
    this.model2.cargo = this.employees[i].cargo;
    this.myValue = i;
  }

  updateEmployee(): void {
    let i = this.myValue;
    for (let j = 0; j < this.employees.length; j++) {
      if (j == i) {
        this.employees[i] = this.model2;
        this.model2 = {};
        this.msg='El Registro se Actualizo Existosamente'
      }

    }
    this.hideUpdate = true;
  }

  closeAlert() {
    this.msg = '';
  }

   }


