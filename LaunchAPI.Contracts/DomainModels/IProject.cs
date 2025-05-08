
namespace LaunchAPI.Contracts.DomainModels
{
    public interface IProject
    {
        int ProjectId { get; set; }
        int ClientId { get; set; }
        string Name { get; set; }
    }
}
