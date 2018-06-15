using GimbaDeal.Data;
using GimbaDeal.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace GimbaDeal.Services
{
    public class EmailDataSql : IDataHelper<Emails>
    {
        private GimbaDealDbContext _context;

        public EmailDataSql(GimbaDealDbContext context)
        {
            _context = context;
        }

        public Emails Atualizar(Emails entidade)
        {
            var email = _context.Set<Emails>().FromSql(
                                "prAtualizarEmailPorId @Id = {0}, @IdCliente = {1}, @Email = {2}, @Ativo = {3}",
                                entidade.Id, entidade.IdCliente, entidade.Email, true).FirstOrDefault();
            return email;
        }

        public IEnumerable<Emails> BuscarPorCliente(int idCliente)
        {
            var email = _context.Set<Emails>().FromSql("prRetornarEmailsPorCliente @IdCliente = {0}", idCliente).ToList();
            return email;
        }

        public bool Excluir(int id)
        {
            var email = _context.Set<Emails>().FromSql("prAtualizarEmailPorId @Id = {0}, @Ativo = {1}", id, false).FirstOrDefault();
            return !email.Ativo;
        }

        public Emails Incluir(Emails entidade)
        {
            var email = _context.Set<Emails>().FromSql(
                                "prIncluirEmailPorCliente @IdCliente = {1}, @Email = {2}",
                                entidade.IdCliente, entidade.Email).FirstOrDefault();
            return email;
        }
    }
}
