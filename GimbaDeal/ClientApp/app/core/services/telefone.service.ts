import { Injectable, Inject } from "@angular/core";
import { Http, Response } from "@angular/http";
import 'rxjs/add/operator/map';
import { Telefone } from "../../shared/models/telefone.model";
import { Observable } from "rxjs/Observable";

@Injectable()
export class TelefoneService {
    constructor(private http: Http, @Inject('BASE_URL') private baseUrl: string) { }


}