
using LaunchAPI.Contracts.Dto;

namespace LaunchAPI.Data.Dto
{
    public class DashboardDataDto : IDashboardDataDto
    {
        public IClientDto Client { get; set; }
        public IUserDto User { get; set; }
        public IEnumerable<IProjectDto> Projects { get; set; }
        public IEnumerable<IWidgetDto> Widgets { get; set; }
    }
}
