using System.ComponentModel.DataAnnotations;

namespace GimbaDeal.Models
{
    public class Cliente
    {
        [Required]
        public int Id { get; set; }

        [Required]
        public string Nome { get; set; }

        [Required]
        public string CNPJ { get; set; }
    }
}
