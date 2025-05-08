
using LaunchAPI.Contracts.DomainModels;
using LaunchAPI.Contracts.Repository;
using LaunchAPI.Contracts.Service;

namespace LaunchAPI.Core.Service
{
    public class DashboardDataService : IDashboardService
    {

        private IDashboardRepository _repository;

        public IDashboardData GetDashboardData(int userId)
        {
            var dashboardData = _repository.GetDashboardData(userId);

        }
    }
}
