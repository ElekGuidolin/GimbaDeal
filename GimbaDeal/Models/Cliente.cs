using System.ComponentModel.DataAnnotations;

namespace GimbaDeal.Models
{
    public class Cliente
    {
        [Required]
        public int Id { get; set; }

        [Required]
        public string Nome { get; set; }

        [Required, MaxLength(14, ErrorMessage = "O CNPJ deve ter apenas 14 números.")]
        public string CNPJ { get; set; }

        [Required]
        public bool Ativo { get; set; }
    }
}
