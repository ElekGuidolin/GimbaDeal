using GimbaDeal.Models;
using System.Collections.Generic;

namespace GimbaDeal.Services
{
    public interface IEnderecoData
    {
        IEnumerable<Endereco> ListarTodos();
        Endereco Buscar(string cep);
        int Incluir(Endereco cliente);
        int Atualizar(Endereco cliente);
    }
}
