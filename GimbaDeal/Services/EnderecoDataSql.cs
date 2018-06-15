using GimbaDeal.Data;
using GimbaDeal.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace GimbaDeal.Services
{
    public class EnderecoDataSql : IDataEndereco
    {
        private GimbaDealDbContext _context;

        public EnderecoDataSql(GimbaDealDbContext context)
        {
            _context = context;
        }

        public Endereco Incluir(Endereco entidade)
        {
            var endereco = _context.Set<Endereco>().FromSql(
                                "prIncluirEndereco @Cep = {0}, @Logradouro = {1}, @Complemento = {2}, @Bairro = {3}, @Localidade = {4}, @Uf = {5}",
                                entidade.Cep, entidade.Logradouro, entidade.Complemento, entidade.Bairro, entidade.Localidade, entidade.UF).FirstOrDefault();
            return endereco;
        }

        public Endereco BuscarPorCep(string cep)
        {
            var endereco = _context.Set<Endereco>().FromSql("prRetornarEnderecosPorCep @Cep = {0}", cep);
            return endereco.FirstOrDefault();
        }

        public Endereco BuscarPorCliente(int idCliente)
        {
            var endereco = _context.Set<Endereco>().FromSql("prRetornarEnderecosPorCep @Cep = {0}", idCliente);
            return endereco.FirstOrDefault();
        }

    }
}
