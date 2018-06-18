import { Injectable, Inject } from "@angular/core";
import { Http, Response, RequestOptions, Headers } from "@angular/http";
import { Observable } from "rxjs/Observable";
import 'rxjs/add/operator/map';
import { Cliente } from "../../shared/models/cliente.model";
import { ClienteCompleto } from "../../shared/models/cliente-completo.model";

@Injectable()
export class ClienteService {
    constructor(private http: Http, @Inject('BASE_URL') private baseUrl: string) { }

    buscarCliente(id: number): Observable<ClienteCompleto> {
        return this.http.get(this.baseUrl + 'api/Cliente/BuscarCliente')
                    .map((res: Response) => res.json() as ClienteCompleto);
    }

    buscarClientes(): Observable<Cliente[]> {
        return this.http.get(this.baseUrl + 'api/Cliente/ListarTodos')
                    .map((res: Response) => res.json() as Cliente[]);
    }

    incluirCliente(clienteCompleto: ClienteCompleto): Observable<Cliente> {
        let localHeaders = new Headers({ "Content-Type": "application/json" });
        let options = new RequestOptions({ headers: localHeaders });
        let body = JSON.stringify(clienteCompleto);

        return this.http.post(this.baseUrl + 'api/Cliente/IncluirCliente', body, options)
            .map((res: Response) => res.json() as Cliente);
    }

    excluirCliente(id: number) : Observable<boolean> {
        return this.http.delete(this.baseUrl + 'api/Cliente/ExcluirCliente/' + id)
            .map((res: Response) => res.json() as boolean);
    }
}