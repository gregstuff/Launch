
using LaunchAPI.Contracts.Dto;

namespace LaunchAPI.Data.Dto
{
    public class WidgetDto : IWidgetDto
    {
        public int WidgetId { get; set; }
        public string Name { get; set; }
        public int X { get; set; }
        public int Y { get; set; }
    }
}
