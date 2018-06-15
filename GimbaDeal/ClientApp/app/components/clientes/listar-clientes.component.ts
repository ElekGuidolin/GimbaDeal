import { Component, Inject } from '@angular/core';
import { Http } from '@angular/http';
import { Cliente } from '../../shared/models/cliente.model';
import { ClienteService } from '../../core/services/cliente.service';

@Component({
    selector: 'listar-clientes',
    templateUrl: './listar-clientes.component.html',
    providers: [ClienteService]
})

export class ListarClientesComponent {
    private clientes: Cliente[];

    constructor(private clienteService: ClienteService) {
    }

    ngOnInit() {
        this.getClientes();
    }

    getClientes(): void {
        this.clienteService.getClientes().subscribe(clientes => {
            this.clientes = clientes;
        }, error => console.log(error));
    }

    alterarCliente(idCliente: number): void {
        alert('Alterando:' + idCliente);
    }

    excluirCliente(idCliente: number): void {
        alert('Excluindo:' + idCliente);
    }

}
