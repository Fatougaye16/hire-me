using Microsoft.AspNetCore.Mvc;

namespace ServiceApp.Modules.Services.endpoints;
[ApiController]
[Route("api/v1/[controller]")]
public class AddServiceController : ControllerBase
{
    [HttpGet("/services")]
    public ActionResult<IEnumerable<string>> Get()
    {
        return Ok("Services added");
    }
}