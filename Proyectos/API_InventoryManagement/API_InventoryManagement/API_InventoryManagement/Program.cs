using API_InventoryManagement.Infraestructure.Data;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();


// Configuracion Base de datos
builder.Services.AddDbContext<AppDBContext>(options =>
                options.UseSqlServer(builder.Configuration.GetConnectionString("InventoryManagement")));




var app = builder.Build();

// Crear base de datos
using (var scope = app.Services.CreateScope())
{
    var context = scope.ServiceProvider.GetRequiredService<AppDBContext>();
    context.Database.Migrate();

    // Ruta al script SQL
    var scriptPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "script.sql");

    // Leer contenido del script
    var scriptContent = File.ReadAllText(scriptPath);

    // Ejecutar script SQL
    context.Database.ExecuteSqlRaw(scriptContent);
}



// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
