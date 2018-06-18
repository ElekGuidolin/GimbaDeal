using GimbaDeal.Models;
using GimbaDeal.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Transactions;

namespace GimbaDeal.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    public class ClienteController : Controller
    {
        private IDataCliente _clienteData;
        private IDataEndereco _enderecoData;
        private IDataHelper<ComplementoEndereco> _complementoEnderecoData;
        private IDataHelper<Socio> _socioData;
        private IDataHelper<Telefone> _telefoneData;
        private IDataHelper<Emails> _emailsData;

        public ClienteController(IDataCliente clienteData, IDataEndereco enderecoData, IDataHelper<ComplementoEndereco> complementoEnderecoData, IDataHelper<Socio> socioData, IDataHelper<Telefone> telefoneData, IDataHelper<Emails> emailsData)
        {
            _clienteData = clienteData;
            _enderecoData = enderecoData;
            _complementoEnderecoData = complementoEnderecoData;
            _socioData = socioData;
            _telefoneData = telefoneData;
            _emailsData = emailsData;
        }

        [HttpGet("[action]")]
        public IEnumerable<Cliente> ListarTodos()
        {
            var clientes = _clienteData.ListarTodos();
            return clientes;
        }

        [HttpGet("[action]")]
        public ClienteCompleto BuscarCliente(int id)
        {
            var clienteRetorno = new ClienteCompleto
            {
                Cliente = _clienteData.Buscar(id),
                Endereco = _enderecoData.BuscarPorCliente(id),
                ComplementoEndereco = _complementoEnderecoData.BuscarPorCliente(id).FirstOrDefault(),
                Socios = _socioData.BuscarPorCliente(id),
                Telefones = _telefoneData.BuscarPorCliente(id),
                Emails = _emailsData.BuscarPorCliente(id)
            };

            return clienteRetorno;
        }

        [HttpPost("[action]")]
        public Cliente IncluirCliente([FromBody]ClienteCompleto clienteCompleto)
        {
            using (var transaction = new CommittableTransaction(new TransactionOptions { IsolationLevel = IsolationLevel.ReadCommitted }))
            {
                try
                {
                    var cliente = _clienteData.Incluir(clienteCompleto.Cliente);

                    var endereco = _enderecoData.BuscarPorCep(clienteCompleto.Endereco.Cep);
                    if (endereco == null)
                    {
                        endereco = _enderecoData.Incluir(clienteCompleto.Endereco);
                    }

                    clienteCompleto.ComplementoEndereco.IdCliente = cliente.Id;
                    clienteCompleto.ComplementoEndereco.IdEndereco = endereco.Id;
                    _complementoEnderecoData.Incluir(clienteCompleto.ComplementoEndereco);

                    foreach (var socio in clienteCompleto.Socios)
                    {
                        socio.IdCliente = cliente.Id;
                        _socioData.Incluir(socio);
                    }

                    foreach (var telefone in clienteCompleto.Telefones)
                    {
                        telefone.IdCliente = cliente.Id;
                        _telefoneData.Incluir(telefone);
                    }

                    foreach (var email in clienteCompleto.Emails)
                    {
                        email.IdCliente = cliente.Id;
                        _emailsData.Incluir(email);
                    }

                    transaction.Commit();
                    return cliente;
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    throw ex;
                }
            }

        }
    }
}