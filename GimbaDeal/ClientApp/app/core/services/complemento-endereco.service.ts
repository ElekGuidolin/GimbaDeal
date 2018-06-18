import { Injectable, Inject } from "@angular/core";
import { Http, Response } from "@angular/http";
import 'rxjs/add/operator/map';
import { ComplementoEndereco } from "../../shared/models/complemento-endereco.model";
import { Observable } from "rxjs/Observable";

@Injectable()
export class ComplementoEnderecoService {
    constructor(private http: Http, @Inject('BASE_URL') private baseUrl: string) { }


}