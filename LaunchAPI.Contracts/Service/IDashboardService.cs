using LaunchAPI.Contracts.DomainModels;

namespace LaunchAPI.Contracts.Service
{
    public interface IDashboardService
    {
        public IDashboardData GetDashboardData(int userId);
    }
}
