using Microsoft.AspNetCore.Mvc;

namespace ServiceApp.Modules.Services.endpoints;
[ApiController]
[Route("api/v1/[controller]")]
public class AddServiceController : ControllerBase
{
    [HttpPost("/services")]
    public ActionResult<IEnumerable<string>> Add()
    {
        return Ok("Services added");
    }
}