import { Injectable, Inject } from "@angular/core";
import { Http, Response } from "@angular/http";
import 'rxjs/add/operator/map';
import { Endereco } from "../../shared/models/endereco.model";

@Injectable()
export class EnderecoService {
    constructor(private http: Http) { }

    getEnderecoLocal(cep: string, baseUrl: string) {
        return this.http.get(baseUrl + 'api/Cliente/ListarTodos')
            .map((res: Response) => res.json().response);
    }

    getEnderecoWs(cep: string) {
        return this.http.get('https://viacep.com.br/ws/' + cep +'/json/')
            .map((res: Response) => res.json().response);
    }
}