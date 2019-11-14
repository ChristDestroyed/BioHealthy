import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { EmpleadosComponent} from './empleados/empleados.component';
import { AppComponent } from './app.component';
import { NavMenuComponent } from './nav-menu/nav-menu.component';
import { HomeComponent } from './home/home.component';
import { VisitantesComponent } from './Visitantes/visitantes.component';
import { RegistroComponent } from './Registro/registro.component';
import { LoginComponent } from './Login/Login.component';

@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    HomeComponent,
    EmpleadosComponent,
    VisitantesComponent,
    RegistroComponent,
    LoginComponent,



  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot([
      { path: '', component: HomeComponent, pathMatch: 'full' },
      { path: 'empleados', component: EmpleadosComponent },
      { path: 'visitantes', component: VisitantesComponent },
      { path: 'registro', component: RegistroComponent },
      { path: 'login', component: LoginComponent },


    ])
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
