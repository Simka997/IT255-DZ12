import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';
import { Http, Headers} from '@angular/http';
import { Router } from '@angular/router';

@Component({
  selector: 'app-dodavanje-cveca',
  templateUrl: './dodavanje-cveca.component.html',
  styleUrls: ['./dodavanje-cveca.component.css']
})
export class DodavanjeCvecaComponent implements OnInit {
  public dodavanjeCvecaForm = new FormGroup({
    sifra: new FormControl(),
    naziv: new FormControl(),
    cena: new FormControl(),
    opis: new FormControl()
  });

  constructor(private _http: Http, private _router: Router) { }

  ngOnInit() {
  }
 public dodajCvet() {
    var data = "sifra="+this.dodavanjeCvecaForm.value.sifra+"&naziv="+this.dodavanjeCvecaForm.value.naziv+"&cena="+this.dodavanjeCvecaForm.value.cena+"&opi="+this.dodavanjeCvecaForm.value.opis;
    var headers = new Headers();
    headers.append('Content-Type', 'application/x-www-form-urlencoded');
    headers.append("token",localStorage.getItem("token"));
    this._http.post('http://localhost:8080/IT255-DZ12/dodajCvece.php',data, { headers:headers }).subscribe( data => {
      
          if(data["_body"].indexOf("error") === -1){
            alert("Uspesno dodavanje cveta");
            this._router.navigateByUrl('dodavanjeCveca');
          }else{
            alert("Neuspesno dodavanje cveta");
          }
        
        }
      );

 

  }
}
