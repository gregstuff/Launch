using AutoMapper;
using LaunchAPI.Contracts.Service;
using LaunchAPI.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace LaunchAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class DashboardController : Controller
    {

        private IDashboardService _dashboardService;
        private IMapper _mapper;

        [HttpGet(Name = "GetDashboardData")]
        public ActionResult<DashboardDataVM> GetDashboardData()
        {
            var dashboardData = _dashboardService.GetDashboardData(1);
            var mapped = _mapper.Map<DashboardDataVM>(dashboardData);
            return Ok(mapped);
        }

    }
}
