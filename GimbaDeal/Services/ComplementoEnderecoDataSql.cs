using GimbaDeal.Data;
using GimbaDeal.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace GimbaDeal.Services
{
    public class ComplementoEnderecoDataSql : IDataHelper<ComplementoEndereco>
    {
        private GimbaDealDbContext _context;

        public ComplementoEnderecoDataSql(GimbaDealDbContext context)
        {
            _context = context;
        }

        public ComplementoEndereco Atualizar(ComplementoEndereco entidade)
        {
            var complemento = _context.Set<ComplementoEndereco>().FromSql(
                                "prAtualizarComplementosEnderecoPorId @Id = {0}, @IdCliente = {1}, @IdEndereco = {2}, @Numero = {3}, @Complemento = {4}, @Ativo = {5}",
                                entidade.Id, entidade.IdCliente, entidade.IdEndereco, entidade.Numero, entidade.Complemento, true).FirstOrDefault();
            return complemento;
        }

        public IEnumerable<ComplementoEndereco> BuscarPorCliente(int idCliente)
        {
            var complemento = _context.Set<ComplementoEndereco>().FromSql("prRetornarComplementoEnderecoPorCliente @IdCliente = {0}", idCliente).ToList();
            return complemento;
        }

        public bool Excluir(int id)
        {
            var complemento =_context.Set<ComplementoEndereco>().FromSql("prAtualizarComplementosEnderecoPorId @Id = {0}, @Ativo = {1}", id, false).FirstOrDefault();
            return !complemento.Ativo;
        }

        public ComplementoEndereco Incluir(ComplementoEndereco entidade)
        {
            var complemento = _context.Set<ComplementoEndereco>().FromSql(
                                "prIncluirComplementoDeEnderecoPorCliente @IdCliente = {0}, @IdEndereco = {1}, @Numero = {2}, @Complemento = {3}",
                                entidade.IdCliente, entidade.IdEndereco, entidade.Numero, entidade.Complemento).FirstOrDefault();
            return complemento;
        }
    }
}
