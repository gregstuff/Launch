using LaunchAPI.Contracts.Dto;
using LaunchAPI.Contracts.Repository;
using LaunchAPI.Data.Dto;

namespace LaunchAPI.Data.Repository
{
    public class DashboardRepository : IDashboardRepository
    {
        public IDashboardDataDto GetDashboardData(int userId)
        {
            return new DashboardDataDto()
            {
                Client = new ClientDto()
                {
                    ClientId = 1,
                    PlanId = 1,
                    Name = "Example Client",
                    WebsiteURL = "www.google.com",
                    Email = "example@emailaddress.com"
                },
                User = new UserDto()
                {
                    ClientId = 1,
                    UserId = 1,
                    Email = "personalEmail@emailaddress.com",
                    FirstName = "Someone",
                    LastName = "Else",
                    MiddleName = "Middle"
                },
                Projects = new List<IProjectDto>() { 
                    new ProjectDto() 
                    { 
                        ClientId = 1,
                        ProjectId = 1,
                        Name = "Refurbishment"
                    } 
                },
                Widgets = new List<IWidgetDto>()
                {
                    new WidgetDto()
                    {
                        
                    }
                }
            };
        }
    }
}
