using GimbaDeal.Models;
using Microsoft.EntityFrameworkCore;

namespace GimbaDeal.Data
{
    public class GimbaDealDbContext : DbContext
    {
        public GimbaDealDbContext(DbContextOptions options) : base(options)
        {

        }

        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<ComplementoEndereco> ComplementosEndereco { get; set; }
        public DbSet<Emails> Emails { get; set; }
        public DbSet<Endereco> Enderecos { get; set; }
        public DbSet<Socio> Socios { get; set; }
        public DbSet<Telefone> Telefones { get; set; }
    }
}
