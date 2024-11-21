using Microsoft.AspNetCore.Mvc;
using MongoDB.Driver;
using ServiceApp.Modules.Services.entities;

namespace ServiceApp.Modules.Services.endpoints
{
    [ApiController]
    [Route("api/v1/[controller]")]
    public class UpdateServiceController : ControllerBase
    {
        private readonly IMongoClient _client;

        public UpdateServiceController(IMongoClient client)
        {
            _client = client;
        }

        [HttpPut("/service/{id}")]

        public ActionResult<IEnumerable<string>> Update(Service service, int id)
        {
            var db = _client.GetDatabase("HireMe");
            var serviceCollection = db.GetCollection<Service>("Jobs");
            var filter = Builders<Service>.Filter.Eq(s => s.Id, id);
            var result = serviceCollection.ReplaceOne(filter, service);
            
            if (result.MatchedCount == 0)
            {
                return NotFound($"Service with Id {id} not found.");
            }

            return Ok($"Service with Id {id} updated successfully.");
        }
    }
}