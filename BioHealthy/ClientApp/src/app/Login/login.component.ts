import { Component } from '@angular/core';
import { NgForm } from '@angular/forms';
import {  OnInit } from '@angular/core'

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }
  Login(form: NgForm) {
    console.log(form.value);

  }

}
