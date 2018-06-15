using GimbaDeal.Models;
using System.Collections.Generic;

namespace GimbaDeal.Services
{
    public interface IDataCliente
    {
        IEnumerable<Cliente> ListarTodos();
        Cliente Buscar(int id);
        Cliente Incluir(Cliente entidade);
        Cliente Atualizar(Cliente entidade);
        bool Excluir(int id);
    }
}
