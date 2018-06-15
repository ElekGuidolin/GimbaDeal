using GimbaDeal.Data;
using GimbaDeal.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace GimbaDeal.Services
{
    public class TelefoneDataSql : IDataHelper<Telefone>
    {
        private GimbaDealDbContext _context;

        public TelefoneDataSql(GimbaDealDbContext context)
        {
            _context = context;
        }

        public Telefone Atualizar(Telefone entidade)
        {
            var telefone = _context.Set<Telefone>().FromSql(
                                "prAtualizarTelefonesPorId @Id = {0}, @IdTipoTelefone = {1}, @Ddd = {2}, @Numero = {3}, @IdCliente = {4}, @Ativo = {5}",
                                entidade.Id, entidade.IdTipoTelefone, entidade.Ddd, entidade.Numero, entidade.IdCliente, true).FirstOrDefault();
            return telefone;
        }

        public IEnumerable<Telefone> BuscarPorCliente(int idCliente)
        {
            var telefone = _context.Set<Telefone>().FromSql("prRetornarTelefonesPorCliente @IdCliente = {0}", idCliente).ToList();
            return telefone;
        }

        public bool Excluir(int id)
        {
            var telefone = _context.Set<Telefone>().FromSql("prAtualizarTelefonesPorId @Id = {0}, @Ativo = {1}", id, false).FirstOrDefault();
            return !telefone.Ativo;
        }

        public Telefone Incluir(Telefone entidade)
        {
            var telefone = _context.Set<Telefone>().FromSql(
                                "prIncluirTelefonePorCliente @IdTipoTelefone = {0}, @Ddd = {1}, @Numero = {2}, @IdCliente = {3}",
                                entidade.IdTipoTelefone, entidade.Ddd, entidade.Numero, entidade.IdCliente).FirstOrDefault();
            return telefone;
        }
    }
}
