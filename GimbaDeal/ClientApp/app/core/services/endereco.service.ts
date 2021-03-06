﻿import { Injectable, Inject } from "@angular/core";
import { Http, Response } from "@angular/http";
import 'rxjs/add/operator/map';
import { Endereco } from "../../shared/models/endereco.model";
import { Observable } from "rxjs/Observable";

@Injectable()
export class EnderecoService {
    constructor(private http: Http, @Inject('BASE_URL') private baseUrl: string) { }

    getEnderecoLocal(cep: string): Observable<Endereco> {
        return this.http.get(this.baseUrl + 'api/Endereco/BuscarPorCep/' + cep)
            .map((res: Response) => res.json() as Endereco);
    //No catch chamar o Ws !!!
    }

    getEnderecoWs(cep: string): Observable<Endereco> {
        return this.http.get('https://viacep.com.br/ws/' + cep +'/json/')
            .map((res: Response) => res.json() as Endereco);
    }
}