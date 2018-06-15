using System.ComponentModel.DataAnnotations;

namespace GimbaDeal.Models
{
    public class Telefone
    {
        [Required]
        public int Id { get; set; }

        [Required]
        public short IdTipoTelefone { get; set; }

        public string NomeTipoTelefone { get; set; }

        [Required]
        public int IdCliente { get; set; }

        [Required]
        public string Ddd { get; set; }

        [Required]
        public string Numero { get; set; }

        [Required]
        public bool Ativo { get; set; }
    }
}
