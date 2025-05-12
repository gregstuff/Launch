
namespace LaunchAPI.Contracts.DomainModels
{
    public interface IWidget
    {
        int WidgetId { get; set; }
        string Name { get; set; }
        int X { get; set; }
        int Y { get; set; }
        int Width { get; set; }
        int Height { get; set; }
    }
}
