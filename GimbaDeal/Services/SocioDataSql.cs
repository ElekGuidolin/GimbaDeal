using GimbaDeal.Data;
using GimbaDeal.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace GimbaDeal.Services
{
    public class SocioDataSql : IDataHelper<Socio>
    {
        private GimbaDealDbContext _context;

        public SocioDataSql(GimbaDealDbContext context)
        {
            _context = context;
        }

        public Socio Atualizar(Socio entidade)
        {
            var socio = _context.Set<Socio>().FromSql(
                                "prAtualizarSocioPorId @Id = {0}, @IdCliente = {1}, @Nome = {2}, @Cpf = {3}, @Ativo = {4}",
                                entidade.Id, entidade.IdCliente, entidade.Nome, entidade.Cpf, true).FirstOrDefault();
            return socio;
        }

        public IEnumerable<Socio> BuscarPorCliente(int idCliente)
        {
            var socio = _context.Set<Socio>().FromSql("prRetornarSociosPorCliente @IdCliente = {0}", idCliente).ToList();
            return socio;
        }

        public bool Excluir(int id)
        {
            var socio = _context.Set<Socio>().FromSql("prAtualizarSocioPorId @Id = {0}, @Ativo = {1}", id, false).FirstOrDefault();
            return !socio.Ativo;
        }

        public Socio Incluir(Socio entidade)
        {
            var socio = _context.Set<Socio>().FromSql(
                                "prIncluirSocioPorCliente @IdCliente = {0}, @Nome = {1}, @Cpf = {2}",
                                entidade.IdCliente, entidade.Nome, entidade.Cpf).FirstOrDefault();
            return socio;
        }
    }
}
