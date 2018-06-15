using GimbaDeal.Data;
using GimbaDeal.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace GimbaDeal.Services
{
    public class ClienteDataSql : IDataCliente
    {
        private GimbaDealDbContext _context;

        public ClienteDataSql(GimbaDealDbContext context)
        {
            _context = context;
        }

        public Cliente Atualizar(Cliente entidade)
        {
            var cliente = _context.Set<Cliente>().FromSql(
                                "prAtualizarCliente @Id = {0}, @Nome = {1}, @Cnpj = {2}",
                                entidade.Id, entidade.Nome, entidade.CNPJ).FirstOrDefault();
            return cliente;
        }

        public Cliente Buscar(int id)
        {
            var cliente = _context.Set<Cliente>().FromSql("prRetornarCliente @Id = {0}", id).FirstOrDefault();
            return cliente;
        }

        public bool Excluir(int id)
        {
            var cliente = _context.Set<Cliente>().FromSql("prExcluirCliente @Id = {0}", id).FirstOrDefault();
            return !cliente.Ativo;
        }

        public Cliente Incluir(Cliente entidade)
        {
            var cliente = _context.Set<Cliente>().FromSql(
                                "prIncluirCliente @Nome = {0}, @Cnpj = {1}",
                                entidade.Nome, entidade.CNPJ).FirstOrDefault();
            return cliente;
        }

        public IEnumerable<Cliente> ListarTodos()
        {
            var todosClientes = _context.Set<Cliente>().FromSql("prRetornarTodosClientes");
            return todosClientes.ToList();
        }
    }
}
