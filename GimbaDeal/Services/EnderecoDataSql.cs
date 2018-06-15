using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GimbaDeal.Data;
using GimbaDeal.Models;
using Microsoft.EntityFrameworkCore;

namespace GimbaDeal.Services
{
    public class EnderecoDataSql : IEnderecoData
    {
        private GimbaDealDbContext _context;

        public EnderecoDataSql(GimbaDealDbContext context)
        {
            _context = context;
        }

        public int Atualizar(Endereco cliente)
        {
            throw new NotImplementedException();
        }

        public int Incluir(Endereco cliente)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Endereco> ListarTodos()
        {
            throw new NotImplementedException();
        }

        public Endereco Buscar(string cep)
        {
            var endereco = _context.Set<Endereco>().FromSql("prRetornarEnderecosPorCep @Cep = {0}", cep);
            return endereco.FirstOrDefault();
        }
    }
}
