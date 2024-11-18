using Microsoft.EntityFrameworkCore;
using ServiceApp.Modules.Services.entities;

namespace ServiceApp.Persistence;

public class ServicesContext : DbContext
{
    public ServicesContext(DbContextOptions<ServicesContext> options) : base(options) { }
    public DbSet<Service> Services { get; set; }
}