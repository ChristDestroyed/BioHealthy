import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { EmpleadosComponent} from'./empleados/empleados.component'
import { AppComponent } from './app.component';
import { NavMenuComponent } from './nav-menu/nav-menu.component';
import { HomeComponent } from './home/home.component';
import { VisitantesComponent } from './Visitantes/visitantes.component'


@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    HomeComponent,
    EmpleadosComponent,
    VisitantesComponent

    
    
  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot([
      { path: '', component: HomeComponent, pathMatch: 'full' },
      { path: 'empleados', component: EmpleadosComponent },
      { path: 'visitantes', component: VisitantesComponent }
      
      
    ])
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
