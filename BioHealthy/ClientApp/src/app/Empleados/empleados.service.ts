import { Injectable, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs/Observable';
import { EmpleadosComponent } from './empleados.component';

@Injectable()
export class EmpleadosService {

  private apiURL = this.baseUrl + "api/Empleados";


  constructor(private http: HttpClient, @Inject('BASE_URL') private baseUrl: string) { }
  getempleados(): Observable<EmpleadosComponent[]> {
    return this.http.get<EmpleadosComponent[]>(this.apiURL);
  }

}
