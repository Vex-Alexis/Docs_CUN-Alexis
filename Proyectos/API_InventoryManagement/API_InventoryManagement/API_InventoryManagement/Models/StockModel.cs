using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace API_InventoryManagement.Models
{
    [Table("Stock", Schema = "dbo")]
    public class StockModel
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int StockId { get; set; }
        public int ProductId { get; set; }
        public int Quantity { get; set; }
    }
}
