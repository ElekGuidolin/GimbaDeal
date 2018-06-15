﻿using GimbaDeal.Models;
using GimbaDeal.Services;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;

namespace GimbaDeal.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    public class ClienteController : Controller
    {
        private IClienteData _clienteData;

        public ClienteController(IClienteData clienteData)
        {
            _clienteData = clienteData;
        }

        [HttpGet("[action]")]
        public IEnumerable<Cliente> ListarTodos()
        {
            var clientes = _clienteData.ListarTodos();
            return clientes;
        }
    }
}