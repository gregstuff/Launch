
namespace LaunchAPI.Contracts.Dto
{
    public interface IDashboardDataDto
    {
        IClientDto Client { get; set; }
        IAppUserDto User { get; set; }
        IEnumerable<IProjectDto> Projects { get; set; }
        IEnumerable<IWidgetDto> Widgets { get; set; }
    }
}
