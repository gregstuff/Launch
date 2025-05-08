namespace LaunchAPI.ViewModels
{
    public class DashboardDataVM
    {
        ClientVM Client { get; set; }
        UserVM User { get; set; }
        IEnumerable<ProjectVM> Projects {get;set;}
        IEnumerable<WidgetVM> Widgets { get; set; }
    }
}
