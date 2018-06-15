import { Component, Inject, Input, OnChanges } from '@angular/core';
import { Http } from '@angular/http';
import { ClienteService } from '../../core/services/cliente.service';
import { FormArray, FormBuilder, FormGroup, FormControl } from '@angular/forms';
import { ClienteCompleto } from '../../shared/models/cliente-completo.model';
import { Cliente } from '../../shared/models/cliente.model';
import { Socio } from '../../shared/models/socio.model';
import { Telefone } from '../../shared/models/telefone.model';
import { Email } from '../../shared/models/email.model';
import { Endereco } from '../../shared/models/endereco.model';
import { ComplementoEndereco } from '../../shared/models/complemento-endereco.model';
import { tiposTelefone } from '../../shared/models/tipo-telefone.model';
import { EnderecoService } from '../../core/services/endereco.service';

@Component({
    selector: 'incluir-cliente',
    templateUrl: './incluir-cliente.component.html',
    styleUrls: ['./incluir-cliente.component.css'],
    providers: [ClienteService, EnderecoService]
})

export class IncluirClienteComponent {

    @Input() novoCliente: ClienteCompleto;

    private Cliente: Cliente;
    private Endereco: Endereco;
    private ComplementoEndereco: ComplementoEndereco;
    private Email: Email;
    private Socio: Socio;
    private Telefone: Telefone;

    formCliente: FormGroup;
    tiposTelefone = tiposTelefone;

    constructor(private fb: FormBuilder, private clienteService: ClienteService, private enderecoService: EnderecoService) {
        this.criarFormulario();
    }

    criarFormulario() {
        this.formCliente = this.fb.group({
            cliente: this.fb.group({
                nome: '',
                cnpj: '',
                ativo: true
            }),
            endereco: this.fb.group({
                cep: '',
                localidade: '',
                uf: '',
                logradouro: '',
                bairro: '',
                complemento: ''
            }),
            complementoEndereco: this.fb.group({
                idCliente: 0,
                idEndereco: 0,
                numero: 0,
                complemento: '',
                ativo: true
            }),
            socios: this.fb.array([]),
            telefones: this.fb.array([]),
            emails: this.fb.array([]),
        });
    }

    ngOnInit() {
        this.iniciarInterfaces();
    }

    iniciarInterfaces() {
        this.iniciarCliente();
        this.iniciarEndereco();
        this.iniciarSocio();
        this.iniciarEmail();
        this.iniciarTelefone();
    }

    iniciarCliente(): void {
        this.Cliente = {
            id: 0,
            nome: '',
            cnpj: '',
            ativo: true
        }
    }

    iniciarEndereco(): void {
        this.Endereco = {
            id: 0,
            cep: '',
            localidade: '',
            uf: '',
            logradouro: '',
            bairro: '',
            complemento: ''
        }
    }

    iniciarComplementoEndereco(): void {
        this.ComplementoEndereco = {
            id: 0,
            idCliente: 0,
            idEndereco: 0,
            numero: 0,
            complemento: '',
            ativo: true
        }
    }

    iniciarSocio(): void {
        this.Socio = {
            id: 0,
            nome: '',
            cpf: ''
        };
    }

    iniciarEmail(): void {
        this.Email = {
            id: 0,
            idCliente: 0,
            email: '',
            ativo: true
        }
    }

    iniciarTelefone(): void {
        this.Telefone = {
            id: 0,
            idTipoTelefone: 1,
            idCliente: 0,
            ddd: '',
            numero: '',
            ativo: true
        }
    }

    ngOnChanges() {
        this.refazerFormulario();
    }

    refazerFormulario() {
        this.formCliente.reset({
            nome: this.novoCliente.cliente.nome,
            cnpj: this.novoCliente.cliente.cnpj
        });
        this.configurarCliente(this.novoCliente.cliente)
        this.configurarEndereco(this.novoCliente.endereco);
        this.configurarComplementoEndereco(this.novoCliente.complementoEndereco);
        this.configurarEmail(this.novoCliente.emails);
        this.configurarSocio(this.novoCliente.socios);
        this.configurarTelefone(this.novoCliente.telefones);
    }

    get cliente(): FormGroup {
        return this.formCliente.get('cliente') as FormGroup
    }

    get endereco(): FormGroup {
        return this.formCliente.get('endereco') as FormGroup
    }

    get complementoEndereco(): FormGroup {
        return this.formCliente.get('complementoEndereco') as FormGroup;
    }

    get socios(): FormArray {
        return this.formCliente.get('socios') as FormArray;
    }

    get emails(): FormArray {
        return this.formCliente.get('emails') as FormArray;
    }

    get telefones(): FormArray {
        return this.formCliente.get('telefones') as FormArray;
    }

    configurarCliente(cliente: Cliente) {
        const clientesFormGroup = this.fb.group(cliente);
        this.formCliente.setControl('cliente', clientesFormGroup);
    }

    configurarEndereco(endereco: Endereco) {
        const enderecosFormControl = this.fb.group(endereco);
        this.formCliente.setControl('endereco', enderecosFormControl);
    }

    configurarComplementoEndereco(complementoEndereco: ComplementoEndereco) {
        const complementoEnderecosFormControl = this.fb.group(complementoEndereco);
        this.formCliente.setControl('complementoEndereco', complementoEnderecosFormControl);
    }

    configurarSocio(socios: Socio[]) {
        const sociosCliente = socios.map(socio => this.fb.group(socio));
        const sociosFormArray = this.fb.array(sociosCliente);
        this.formCliente.setControl('socios', sociosFormArray);
    }

    configurarTelefone(telefones: Telefone[]) {
        const telefonesCliente = telefones.map(telefone => this.fb.group(telefone));
        const telefonesFormArray = this.fb.array(telefonesCliente);
        this.formCliente.setControl('telefones', telefonesFormArray);
    }

    configurarEmail(emails: Email[]) {
        const emailsCliente = emails.map(email => this.fb.group(email));
        const emailsFormArray = this.fb.array(emailsCliente);
        this.formCliente.setControl('emails', emailsFormArray);
    }

    incluirEmail() {
        this.emails.push(this.fb.group(this.Email));
    }

    incluirSocio() {
        this.socios.push(this.fb.group(this.Socio));
    }

    incluirTelefone() {
        this.telefones.push(this.fb.group(this.Telefone))
    }

    excluirEmail(index: number) {
        this.emails.removeAt(index);
    }

    excluirSocio(index: number) {
        this.socios.removeAt(index);
    }

    excluirTelefone(index: number) {
        this.telefones.removeAt(index);
    }

    pesquisarCep() {
        var cep: string = '04632010';
        this.enderecoService.getEnderecoLocal(cep).subscribe(end => {
            this.Endereco = end;
        }, error => console.log(error));
    }
}
