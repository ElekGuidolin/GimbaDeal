using System.ComponentModel.DataAnnotations;

namespace GimbaDeal.Models
{
    public class ComplementoEndereco
    {
        [Required]
        public int Id { get; set; }

        [Required]
        public int IdCliente { get; set; }

        [Required]
        public int IdEndereco { get; set; }

        [Required]
        public int Numero { get; set; }

        [Required]
        public string Complemento { get; set; }

        [Required]
        public bool Ativo { get; set; }
    }
}
