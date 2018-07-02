import { Component, Input, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, NgForm } from '@angular/forms';
import { ClienteService } from '../../../core/services/cliente.service';
import { EnderecoService } from '../../../core/services/endereco.service';
import { Cliente } from '../../../shared/models/cliente.model';
import { FormGroupClienteComponent } from '../shared/form-group-cliente.component';

@Component({
    selector: 'incluir-cliente',
    templateUrl: './incluir-cliente.component.html',
    styleUrls: ['../shared/estilo-cliente.component.css'],
    providers: [
        ClienteService,
        EnderecoService,
        FormGroupClienteComponent
    ]
})

export class IncluirClienteComponent implements OnInit {

    public formCompleto: FormGroup;
    @Input() clienteFormGroup: FormGroup;
    //@Input() enderecoFormGroup: FormGroup = new FormGroupEnderecoComponent(this._enderecoService).grupoEndereco;

    alertsDismissible: boolean = true;
    mostrarSucesso: boolean = false;
    mostrarErro: boolean = false;

    constructor(private _fb: FormBuilder,
                private _enderecoService: EnderecoService,
                private _clienteService: ClienteService,
                private _formCliente: FormGroupClienteComponent) {
        this.clienteFormGroup = this._fb.group(this._formCliente.cliente);
        this.formCompleto = this._fb.group({
            'clienteFormGroup': this.clienteFormGroup //,
            //'enderecoFormGroup': this.enderecoFormGroup
        });
        
    }

    ngOnInit(): void {

    }

    prepararInclusao(): void {
        alert('Estou alterando.');
        this.clienteFormGroup = this._formCliente.cliente;
    }

    register(theForm: NgForm) {
        this.prepararInclusao();
        console.log('Registration successful.');
        console.log(theForm.value);
    }

    onSubmit(model: Cliente) {
        console.log(model);
    }

}
