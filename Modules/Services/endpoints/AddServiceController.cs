using Microsoft.AspNetCore.Mvc;
using MongoDB.Driver;
using ServiceApp.Modules.Services.entities;

namespace ServiceApp.Modules.Services.endpoints;
[ApiController]
[Route("api/v1/[controller]")]
public class AddServiceController : ControllerBase
{
    private readonly IMongoClient _client;
    public AddServiceController(IMongoClient client)
    {
        _client = client;
    }
    [HttpPost("/services")]
    public ActionResult<IEnumerable<string>> Add(Service service)
    {
        var db = _client.GetDatabase("HireMe");
        var collection = db.GetCollection<Service>("Jobs");
        collection.InsertOne(service);

        return Ok("Service added successfully");
    }
}