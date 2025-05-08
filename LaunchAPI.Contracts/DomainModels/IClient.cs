
namespace LaunchAPI.Contracts.DomainModels
{
    public interface IClient
    {
        int ClientId { get; set; }
        int PlanId { get; set; }
        string Name { get; set; }
        string WebsiteURL { get; set; }
        string Email { get; set; }
    }
}
