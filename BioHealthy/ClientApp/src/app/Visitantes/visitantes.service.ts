import { Injectable, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs/Observable';
import { VisitantesComponent } from './visitantes.component';

@Injectable()
export class EmpleadosService {

    private apiURL = this.baseUrl + "api/Visitantes";


    constructor(private http: HttpClient, @Inject('BASE_URL') private baseUrl: string) { }
    getempleados(): Observable<VisitantesComponent[]> {
        return this.http.get<VisitantesComponent[]>(this.apiURL);
    }

}
