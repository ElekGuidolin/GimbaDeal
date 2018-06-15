using System.ComponentModel.DataAnnotations;

namespace GimbaDeal.Models
{
    public class Emails
    {
        [Required]
        public int Id { get; set; }

        [Required]
        public string Email { get; set; }

        [Required]
        public int IdCliente { get; set; }

        [Required]
        public bool Ativo { get; set; }
    }
}
