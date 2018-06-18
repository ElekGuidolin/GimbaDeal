import { Injectable, Inject } from "@angular/core";
import { Http, Response } from "@angular/http";
import 'rxjs/add/operator/map';
import { Socio } from "../../shared/models/socio.model";
import { Observable } from "rxjs/Observable";

@Injectable()
export class SocioService {
    constructor(private http: Http, @Inject('BASE_URL') private baseUrl: string) { }


}