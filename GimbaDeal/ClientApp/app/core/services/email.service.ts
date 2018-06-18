import { Injectable, Inject } from "@angular/core";
import { Http, Response } from "@angular/http";
import 'rxjs/add/operator/map';
import { Email } from "../../shared/models/email.model";
import { Observable } from "rxjs/Observable";

@Injectable()
export class EmailService {
    constructor(private http: Http, @Inject('BASE_URL') private baseUrl: string) { }

    atualizarEmail() {

    }

    excluirEmail() {

    }
}