using System.Collections.Generic;

namespace GimbaDeal.Models
{
    public class ClienteCompleto
    {
        public ClienteCompleto()
        {
            Socios = new List<Socio>();
            Telefones = new List<Telefone>();
            Emails = new List<Emails>();
        }

        public Cliente Cliente { get; set; }
        public Endereco Endereco { get; set; }
        public ComplementoEndereco ComplementoEndereco { get; set; }
        public IEnumerable<Socio> Socios { get; set; }
        public IEnumerable<Telefone> Telefones { get; set; }
        public IEnumerable<Emails> Emails { get; set; }
    }
}
