using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace API_InventoryManagement.Models
{
    [Table("AppUser", Schema = "dbo")]
    public class AppUserModel
    {
        [Key, DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int AppUserId { get; set; }
        public string? Username { get; set; }
        public string? Email { get; set; }
        public string? Password { get; set; }
    }
}
