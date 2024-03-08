using API_InventoryManagement.Models;
using Microsoft.EntityFrameworkCore;

namespace API_InventoryManagement.Infraestructure.Data
{
    public class AppDBContext : DbContext
    {
        public AppDBContext(DbContextOptions<AppDBContext> options) : base(options)
        {
            //
        }

        public DbSet<AppUserModel> AppUsers { get; set; }
        public DbSet<ProductModel> Products { get; set; }
        public DbSet<StockModel> Stocks { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {           

        }

    }
}
