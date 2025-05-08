using Microsoft.AspNetCore.Mvc;

namespace LaunchAPI.Controllers
{
    public class TaskController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
