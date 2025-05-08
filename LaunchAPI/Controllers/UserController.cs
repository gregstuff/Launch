using Microsoft.AspNetCore.Mvc;

namespace LaunchAPI.Controllers
{
    public class UserController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
