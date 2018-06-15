using System.ComponentModel.DataAnnotations;

namespace GimbaDeal.Models
{
    public class Socio
    {
        [Required]
        public int Id { get; set; }

        [Required]
        public string Nome { get; set; }

        [Required]
        public string Cpf { get; set; }

        [Required]
        public int IdCliente { get; set; }

        [Required]
        public bool Ativo { get; set; }
    }
}
