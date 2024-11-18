using Microsoft.AspNetCore.Mvc;
using MongoDB.Driver;

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
             try
        {
            var database = _client.GetDatabase("HireMeDB");
            var collections = database.ListCollectionNames().ToList();

            return Ok(new
            {
                Message = "Successfully connected to MongoDB!",
                Collections = collections
            });
        }
        catch (Exception ex)
        {
            return StatusCode(500, new
            {
                Message = "Failed to connect to MongoDB.",
                Error = ex.Message
            });
        }
        }
    }
}