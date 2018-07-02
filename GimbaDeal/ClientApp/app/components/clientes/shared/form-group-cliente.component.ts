import { Component, Input } from '@angular/core';
import { FormControl, ReactiveFormsModule, FormGroup, Validators } from '@angular/forms';
import { Cliente } from '../../../shared/models/cliente.model';

@Component({
    selector: 'form-group-cliente',
    templateUrl: './form-group-cliente.component.html'
})
export class FormGroupClienteComponent {
    @Input() grupoCliente: FormGroup;

    public Cliente: Cliente = {
        id: 0,
        nome: '',
        cnpj: '',
        ativo: true
    };

    constructor() {
        this.grupoCliente = new FormGroup({
            'id': new FormControl(this.Cliente.id),
            'nome': new FormControl(this.Cliente.nome, [
                Validators.required,
                Validators.minLength(10),
            ]),
            'cnpj': new FormControl(this.Cliente.cnpj, [
                Validators.required,
                Validators.minLength(14)
            ]),
            'ativo': new FormControl(this.Cliente.ativo)
        });
    }

    get id() { return this.grupoCliente.get('id');}

    get nome() { return this.grupoCliente.get('nome'); }

    get cnpj() { return this.grupoCliente.get('cnpj'); }

    get ativo() { return this.grupoCliente.get('ativo'); }

    get cliente(): FormGroup { return this.grupoCliente; }
}