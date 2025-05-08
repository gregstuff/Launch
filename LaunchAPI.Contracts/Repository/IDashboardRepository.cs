
using LaunchAPI.Contracts.Dto;

namespace LaunchAPI.Contracts.Repository
{
    public interface IDashboardRepository
    {
        public IDashboardDataDto GetDashboardData(int userId);
    }
}
