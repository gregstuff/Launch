
namespace LaunchAPI.Contracts.Dto
{
    public interface IWidgetDto
    {
        int WidgetId { get; set; }
        string Name { get; set; }
        int X { get; set; }
        int Y { get; set; }
    }
}
