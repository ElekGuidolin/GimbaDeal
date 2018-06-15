using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GimbaDeal.Data;
using GimbaDeal.Models;
using Microsoft.EntityFrameworkCore;

namespace GimbaDeal.Services
{
    public class ClienteDataSql : IClienteData
    {
        private GimbaDealDbContext _context;

        public ClienteDataSql(GimbaDealDbContext context)
        {
            _context = context;
        }

        public int Atualizar(Cliente cliente)
        {
            throw new NotImplementedException();
        }

        public int Incluir(Cliente cliente)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Cliente> ListarTodos()
        {
            var todosClientes = _context.Set<Cliente>().FromSql("prRetornarTodosClientes");
            return todosClientes.ToList();
        }

        public Cliente Recuperar(int id)
        {
            throw new NotImplementedException();
        }
    }
}
