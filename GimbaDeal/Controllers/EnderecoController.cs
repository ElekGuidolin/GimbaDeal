using GimbaDeal.Models;
using GimbaDeal.Services;
using Microsoft.AspNetCore.Mvc;

namespace GimbaDeal.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    public class EnderecoController : Controller
    {
        private IDataEndereco _dataEndereco;

        public EnderecoController(IDataEndereco dataEndereco)
        {
            _dataEndereco = dataEndereco;
        }

        [HttpGet("[action]/{cep}")]
        public Endereco BuscarPorCep(string cep)
        {
            var endereco = _dataEndereco.BuscarPorCep(cep);
            return endereco;
        }
    }
}