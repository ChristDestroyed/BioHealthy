import { Component } from '@angular/core';

@Component({
  selector: 'app-visitantes',
  templateUrl: './visitantes.component.html',
  styleUrls: ['./visitantes.component.css']
})
export class VisitantesComponent {
  msg: string;
  documento: string;
  nombre: string;
  apellido: string;
  cargo: string;
  ciudad:string;

  visitantes = [
    {documento:'123',nombre:"sebastian",apellido:"castro",cargo:"desarrollo",ciudad:"medellin"},

  ];

  model: any = {};
  model2: any = {};
  hideUpdate: boolean = true;

  addVisitantes(): void {
    this.visitantes.push(this.model);
    this.model = {};
    this.msg='El Registro Fue Exitoso'
  }
  deleteVisitantes(i): void {
    var answer = confirm('Esta Seguro de Querer Eliminarlo')
    if (answer) {
      this.visitantes.splice(i, 1);
    }
  }

  myValue;
  editVisitates(i): void {
    this.hideUpdate = false;
    this.model2.documento = this.visitantes[i].documento;
    this.model2.nombre = this.visitantes[i].nombre;
    this.model2.apellido = this.visitantes[i].apellido;
    this.model2.cargo = this.visitantes[i].cargo;
    this.model2.ciudad = this.visitantes[i].ciudad;
    this.myValue = i;
  }

  updateVisitantes(): void {
    let i = this.myValue;
    for (let j = 0; j < this.visitantes.length; j++) {
      if (j == i) {
        this.visitantes[i] = this.model2;
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



