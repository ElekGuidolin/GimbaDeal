import { Cliente } from "./cliente.model";
import { Endereco } from "./endereco.model";
import { ComplementoEndereco } from "./complemento-endereco.model";
import { Socio } from "./socio.model";
import { Email } from "./email.model";
import { Telefone } from "./telefone.model";

export interface ClienteCompleto {
    cliente: Cliente;
    endereco: Endereco;
    complementoEndereco: ComplementoEndereco;
    socios: Socio[];
    emails: Email[];
    telefones: Telefone[];
}