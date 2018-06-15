using GimbaDeal.Models;

namespace GimbaDeal.Services
{
    public interface IDataEndereco
    {
        Endereco Incluir(Endereco entidade);
        Endereco BuscarPorCep(string cep);
        Endereco BuscarPorCliente(int idCliente);
    }
}