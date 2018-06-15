﻿import { Injectable, Inject } from "@angular/core";
import { Http, Response } from "@angular/http";
import { Cliente } from "../../shared/models/cliente.model";
import { Observable } from "rxjs/Observable";
import 'rxjs/add/operator/map';

@Injectable()
export class ClienteService {
    constructor(private http: Http, @Inject('BASE_URL') private baseUrl: string) { }

    getCliente() {
        return this.http.get(this.baseUrl + 'api/Cliente/ListarTodos')
            .map((res: Response) => res.json().response);
    }

    getClientes(): Observable<Cliente[]> {
        return this.http.get(this.baseUrl + 'api/Cliente/ListarTodos')
                    .map((res: Response) => res.json() as Cliente[]);
    }
}