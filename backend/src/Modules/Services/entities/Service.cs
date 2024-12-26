namespace ServiceApp.Modules.Services.entities;

public class Service
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public string Category { get; set; }
    public int Rating { get; set; }
    public ICollection<Picture>? Pictures { get; set; }
}