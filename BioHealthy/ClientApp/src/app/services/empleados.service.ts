import { Injectable, Inject } from '@angular/core';
import { Response } from '@angular/http';
import {Http} from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';
import 'rxjs/add/observable/throw';

@Injectable()
export class EmpleadosService {
    myAppUrl = '';

    // tslint:disable-next-line: deprecation
    constructor(private _http: Http, @Inject('BASE_URL') baseUrl: string) {
        this.myAppUrl = baseUrl;
    }

    getEmpleados() {
        return this._http.get(this.myAppUrl + 'api/Empleados/Index')
            // tslint:disable-next-line: deprecation
            .map((response: Response) => {
              return response.json();
            })
            .catch(this.errorHandler);
    }

    getEmpleadosById(id: number) {
        return this._http.get(this.myAppUrl + 'api/Empleados/Details/' + id)
            // tslint:disable-next-line: deprecation
            .map((response: Response) => response.json())
            .catch(this.errorHandler);
    }

    saveEmpleados(Empleados) {
        return this._http.post(this.myAppUrl + 'api/Empleados/Create', Empleados
            // tslint:disable-next-line: deprecation
            .map((response: Response) => response.json())
            .catch(this.errorHandler)
    }

    updateEmpleados(Empleados) {
        return this._http.put(this.myAppUrl + 'api/Empleados/Edit', Empleados)
            // tslint:disable-next-line: deprecation
            .map((response: Response) => response.json())
            .catch(this.errorHandler);
    }

    deleteEmpleados(id) {
        return this._http.delete(this.myAppUrl + 'api/Empleados/Delete/' + id)
            // tslint:disable-next-line: deprecation
            .map((response: Response) => response.json())
            .catch(this.errorHandler);
    }

    // tslint:disable-next-line: deprecation
    errorHandler(error: Response) {
        console.log(error);
        return Observable.throw(error);
    }
}
