import { Component, Input, Inject } from '@angular/core';
import { FormControl, FormGroup, Validators, FormBuilder } from '@angular/forms';
import { Endereco } from '../../../shared/models/endereco.model';
import { EnderecoService } from '../../../core/services/endereco.service';
import { Http } from '@angular/http';

@Component({
    selector: 'form-group-endereco',
    templateUrl: './form-group-endereco.component.html',
    providers: [EnderecoService]
})
export class FormGroupEnderecoComponent {
    @Input() grupoEndereco: FormGroup;
    cepParaBusca: string = '';
    
    _fb: FormBuilder = new FormBuilder;
    
    public Endereco: Endereco = {
        id: 0,
        cep: '',
        logradouro: '',
        complemento: '',
        bairro: '',
        localidade: '',
        uf: '',
        unidade: '',
        ibge: '',
        gia: '',
        erro: false
    };

    constructor(@Inject(EnderecoService) private enderecoService: EnderecoService) {
        this.grupoEndereco = new FormGroup({
            'id': new FormControl(this.Endereco.id),
            'cep': new FormControl(this.Endereco.cep, [
                Validators.required,
                Validators.minLength(8),
            ]),
            'localidade': new FormControl(this.Endereco.localidade, [
                Validators.required,
                Validators.minLength(5),
            ]),
            'uf': new FormControl(this.Endereco.uf, [
                Validators.required,
                Validators.minLength(2),
            ]),
            'logradouro': new FormControl(this.Endereco.logradouro, [
                Validators.required,
                Validators.minLength(10),
            ]),
            'bairro': new FormControl(this.Endereco.bairro, [
                Validators.required,
                Validators.minLength(5),
            ]),
            'complemento': new FormControl(this.Endereco.complemento, [
                Validators.required,
                Validators.minLength(2),
            ])
        });
    }

    get id() { return this.grupoEndereco.get('id'); }

    get cep() { return this.grupoEndereco.get('cep'); }

    get localidade() { return this.grupoEndereco.get('localidade'); }

    get uf() { return this.grupoEndereco.get('uf'); }

    get logradouro() { return this.grupoEndereco.get('logradouro'); }

    get bairro() { return this.grupoEndereco.get('bairro'); }

    get complemento() { return this.grupoEndereco.get('complemento'); }

    get endereco(): FormGroup { return this.grupoEndereco; }

    configurarEndereco(endereco: Endereco) {
        const enderecosFormControl = this._fb.group(endereco);
        this.grupoEndereco.setControl('grupoEndereco', enderecosFormControl);
    }

    pesquisarCep() {
        var _cep: string = this.cepParaBusca;

        if ((_cep == '') || (_cep == null)) {
            this.endereco.reset();
            this.configurarEndereco(this.Endereco);
            return;
        }

        this.enderecoService.getEnderecoLocal(_cep).subscribe(end => {
            if (end) {
                this.configurarEndereco(end as Endereco);
            }
            else {
                this.enderecoService.getEnderecoWs(_cep).subscribe(endws => {
                    if (endws) {
                        endws.cep = endws.cep.replace('-', '');
                        this.configurarEndereco(endws as Endereco);
                    }
                    else {
                        alert('CEP inexistente favor digitar um CEP válido!')
                    }
                }, error => console.log(error))
            }
        }, error => console.log(error));
    }
}