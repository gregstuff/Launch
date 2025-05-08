using LaunchAPI.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace LaunchAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class ClientController : Controller
    {

        [HttpGet(Name = "GetClients")]
        public ActionResult<IEnumerable<ClientVM>> GetClients()
        {

            return Ok();
        }

    }
}
