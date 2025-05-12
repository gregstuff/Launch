namespace LaunchAPI.ViewModels
{
    public class DashboardDataVM
    {
        ClientVM Client { get; set; }
        AppUserVM User { get; set; }
        IEnumerable<ProjectVM> Projects {get;set;}
        IEnumerable<WidgetVM> Widgets { get; set; }
    }
}
