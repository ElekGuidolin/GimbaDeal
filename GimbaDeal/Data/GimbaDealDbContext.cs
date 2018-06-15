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
    }
}
