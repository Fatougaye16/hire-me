using Microsoft.AspNetCore.Mvc;
using MongoDB.Driver;
using ServiceApp.Modules.Services.entities;

namespace ServiceApp.Modules.Services.endpoints
{
    [ApiController]
    [Route("api/v1[controller]")]
    public class GetServicesController : ControllerBase
    {
        private readonly IMongoClient _client;

        public GetServicesController(IMongoClient client)
        {
            _client = client;
        }

        [HttpGet("/services")]
        public ActionResult<IEnumerable<string>> Get() 
        {
             var database = _client.GetDatabase("HireMe");
            var collections = database.GetCollection<Service>("Jobs");
             return Ok(new
            {
                 Services = collections.Find(l => true).ToList()
            });
        }
    }
}