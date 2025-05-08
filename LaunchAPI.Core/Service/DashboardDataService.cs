
using LaunchAPI.Contracts.DomainModels;
using LaunchAPI.Contracts.Repository;
using LaunchAPI.Contracts.Service;
using AutoMapper;

namespace LaunchAPI.Core.Service
{
    public class DashboardDataService : IDashboardService
    {

        private IDashboardRepository _repository;
        private IMapper _mapper;

        public IDashboardData GetDashboardData(int userId)
        {
            var dashboardData = _repository.GetDashboardData(userId);
            return _mapper.Map<IDashboardData>(dashboardData);
        }
    }
}
