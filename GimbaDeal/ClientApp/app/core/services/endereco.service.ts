import { Inject, Injectable } from "@angular/core";
import { Http, Response } from "@angular/http";
import { Observable } from "rxjs/Observable";
import 'rxjs/add/operator/map';
import { Endereco } from "../../shared/models/endereco.model";

@Injectable()
export class EnderecoService {
    constructor(private http: Http, @Inject('BASE_URL') private baseUrl: string) { }

    getEnderecoLocal(cep: string): Observable<Endereco> {
        return this.http.get(this.baseUrl + 'api/Endereco/BuscarPorCep/' + cep)
            .map((res: Response) => res.json() as Endereco);
    }

    getEnderecoWs(cep: string): Observable<Endereco> {
        return this.http.get('https://viacep.com.br/ws/' + cep +'/json/')
            .map((res: Response) => res.json() as Endereco);
    }
}