using Microsoft.AspNetCore.Mvc;

namespace LaunchAPI.Controllers
{
    public class WidgetController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
