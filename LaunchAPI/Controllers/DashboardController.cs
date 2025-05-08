using LaunchAPI.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace LaunchAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class DashboardController : Controller
    {

        [HttpGet(Name = "GetDashboardData")]
        public ActionResult<DashboardDataVM> GetDashboardData()
        {
            return Ok(null);
        }

    }
}
