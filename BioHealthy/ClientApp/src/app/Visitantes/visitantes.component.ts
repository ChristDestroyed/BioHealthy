import { Component, OnInit } from '@angular/core';
import { VisitantesService } from './visitantes.service';

@Component({
  selector: 'app-visitantes',
  templateUrl: './visitantes.component.html',
  styleUrls: ['./visitantes.component.css']
})
export class VisitantesComponent implements OnInit {
    
    lstVisitantes: [] = [];

    constructor(private visitantesService: VisitantesService) {}

  msg: string;
  documento: string;
  nombre: string;
  apellido: string;
  cargo: string;
  ciudad: string;

  visitantes = [
    {documento: '' , nombre: '' , apellido: '', cargo: '', ciudad: ''},

  ];

  model: any = {};
  model2: any = {};
  hideUpdate = true;

  addVisitantes(): void {
    this.visitantes.push(this.model);
    this.model = {};
    this.msg = 'El Registro Fue Exitoso';
  }
  deleteVisitantes(i): void {
    // tslint:disable-next-line: prefer-const
    let answer = confirm('Esta Seguro de Querer Eliminarlo');
    if (answer) {
      this.visitantes.splice(i, 1);
    }
  }

  // tslint:disable-next-line: member-ordering
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
    const i = this.myValue;
    for (let j = 0; j < this.visitantes.length; j++) {
      // tslint:disable-next-line: triple-equals
      if (j == i) {
        this.visitantes[i] = this.model2;
        this.model2 = {};
        this.msg = 'El Registro se Actualizo Existosamente';
      }

    }
    this.hideUpdate = true;
  }

  closeAlert() {
    this.msg = '';
  }
    ngOnInit() {
        this.visitantesService.getvisitantes()
            .subscribe(_lstVisitantes => this.visitantes = this.lstVisitantes,
                error => console.error(error))


    }
   }



