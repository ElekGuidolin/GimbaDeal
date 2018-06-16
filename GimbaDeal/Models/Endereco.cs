using System.ComponentModel.DataAnnotations;

namespace GimbaDeal.Models
{
    public class Endereco
    {
        [Required]
        public int Id { get; set; }

        [Required, MaxLength(8, ErrorMessage = "O CEP deve ter apenas 8 números.")]
        public string Cep { get; set; }

        [Required]
        public string Logradouro { get; set; }

        [Required]
        public string Complemento { get; set; }

        [Required]
        public string Bairro { get; set; }

        [Required]
        public string Localidade { get; set; }

        [Required]
        public string UF { get; set; }
    }
}
