using System.Collections.Generic;

namespace GimbaDeal.Services
{
    public interface IDataHelper<T> where T : class
    {
        T Atualizar(T entidade);
        IEnumerable<T> BuscarPorCliente(int idCliente);
        bool Excluir(int id);
        T Incluir(T entidade);
    }
}
