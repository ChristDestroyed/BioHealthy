import { Component,Inject, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-empleados',
  templateUrl: './empleados.component.html',
  styleUrls: ['./empleados.component.css']
})
export class EmpleadosComponent implements OnInit {
   

  msg: string;
  documento: string;
  nombre: string;
  apellido: string;
  cargo: string;
  ciudad:string;

empleados = [
    {documento: '' , nombre: '' , apellido: '', cargo: '', ciudad: ''},


  ];



  model: any = {};
  model2: any = {};
  hideUpdate: boolean = true;

  addEmpleados(): void {
    this.empleados.push(this.model);
    this.model = {};
    this.msg='El Registro Fue Exitoso'
  }
  deleteEmpleados(i): void {
    var answer = confirm('Esta Seguro de Querer Eliminarlo')
    if (answer) {
      this.empleados.splice(i, 1);
    }
  }

  myValue;
  editEmpleados(i): void {
    this.hideUpdate = false;
    this.model2.documento = this.empleados[i].documento;
    this.model2.nombre = this.empleados[i].nombre;
    this.model2.apellido = this.empleados[i].apellido;
    this.model2.cargo = this.empleados[i].cargo;
    this.model2.ciudad=this.empleados[i].ciudad;
    this.myValue = i;
  }

  updateEmpleados(): void {
    let i = this.myValue;
    for (let j = 0; j < this.empleados.length; j++) {
      if (j == i) {
        this.empleados[i] = this.model2;
        this.model2 = {};
        this.msg='El Registro se Actualizo Existosamente'
      }

    }
    this.hideUpdate = true;
  }

  closeAlert() {
    this.msg = '';
  }
    ngOnInit(): void {
        throw new Error("Method not implemented.");
    }
  
  }
 

