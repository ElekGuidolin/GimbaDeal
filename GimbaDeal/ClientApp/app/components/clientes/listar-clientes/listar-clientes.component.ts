import { Component, Inject, TemplateRef } from '@angular/core';
import { Http } from '@angular/http';
import { ClienteService } from '../../../core/services/cliente.service';
import { BsModalService, BsModalRef } from 'ngx-bootstrap/modal';
import { Cliente } from '../../../shared/models/cliente.model';

@Component({
    selector: 'listar-clientes',
    templateUrl: './listar-clientes.component.html',
    styleUrls: ['./listar-clientes.component.css'],
    providers: [ClienteService, BsModalService]
})

export class ListarClientesComponent {
    public clientes: Cliente[];
    
    confirmMessage: string = '';
    clienteParaExcluir: number = 0;
    alertsDismissible: boolean = true;
    mostrarSucesso: boolean = false;
    mostrarErro: boolean = false;
    alertTimeout: number = 3000;
    modalRef: BsModalRef = {
        hide: () => { }
    };

    constructor(private clienteService: ClienteService, public modalService: BsModalService) {
        this.clientes = [];
    }

    ngOnInit() {
        this.buscarClientes();
    }

    buscarClientes(): void {
        this.clienteService.buscarClientes().subscribe(clientes => {
            this.clientes = clientes;
        }, error => console.log(error));
    }

    alterarCliente(idCliente: number): void {
        alert('Alterando:' + idCliente);
    }

    confirmarExclusao(idCliente: number, nomeCliente: string, template: TemplateRef<any>) {
        this.clienteParaExcluir = idCliente;
        this.confirmMessage = 'Tem certeza que deseja excluir o cliente ' + nomeCliente + '? \n Essa ação não poderá ser desfeita!'
        this.modalRef = this.modalService.show(template, { class: 'modal-md' });
    }

    excluirCliente(): void {
        this.clienteService.excluirCliente(this.clienteParaExcluir).subscribe(cliente => {
            if (cliente) {
                this.mostrarSucesso = true;
                this.buscarClientes();
            }
        }, error => {
            this.mostrarErro = true;
            console.log(error)
        });
        this.modalRef.hide();
    }

    fecharModal() {
        this.modalRef.hide();
    }

}
