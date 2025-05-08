using Microsoft.AspNetCore.Mvc;

namespace LaunchAPI.Controllers
{
    public class ProjectController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
