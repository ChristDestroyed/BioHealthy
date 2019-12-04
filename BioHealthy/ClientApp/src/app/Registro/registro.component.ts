import { Component } from '@angular/core';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class  RegistroComponent {


  msg: string;
  email: string;
  password: any;

  User = [
    {email: '' , password: '' , password2: ''},


  ];





}
