import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing/app-routing.module';
import { AppComponent } from './app.component';
import {OnamaComponent} from './pages/onama/onama.component';
import { PocetnaComponent } from './pages/pocetna/pocetna.component';
import { SearchpipePipe } from './pipes/searchpipe.pipe';
import { HttpModule } from '@angular/http';
import { FormsModule } from '@angular/forms';
import { DodavanjeCvecaComponent } from './pages/dodavanje-cveca/dodavanje-cveca.component';
import { RegistracijaComponent } from './pages/registracija/registracija.component';
import { LogInComponent } from './log-in/log-in.component';
import { NavbarComponent } from './navbar/navbar.component';


@NgModule({
  declarations: [
    AppComponent,
    OnamaComponent,
    PocetnaComponent,
    SearchpipePipe,
    DodavanjeCvecaComponent,
    RegistracijaComponent,
    LogInComponent,
    NavbarComponent
  ],
  imports: [
    BrowserModule,
    HttpModule,
    AppRoutingModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
