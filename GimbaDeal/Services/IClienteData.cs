using GimbaDeal.Models;
using System.Collections.Generic;

namespace GimbaDeal.Services
{
    public interface IClienteData
    {
        IEnumerable<Cliente> ListarTodos();
        Cliente Recuperar(int id);
        int Incluir(Cliente cliente);
        int Atualizar(Cliente cliente);
    }
}
