using Microsoft.AspNetCore.Mvc;

namespace LaunchAPI.Controllers
{
    public class AppUserController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
