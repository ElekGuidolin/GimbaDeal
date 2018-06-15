export interface TipoTelefone {
    id: number;
    nome: string;
}

export const tiposTelefone: TipoTelefone[] = [
    { id: 0, nome: 'Selecione' },
    { id: 1, nome: 'Fixo' },
    { id: 2, nome: 'Residencial' },
    { id: 3, nome: 'Celular' }
]