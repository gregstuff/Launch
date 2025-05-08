
namespace LaunchAPI.Contracts.Dto
{
    public interface IProjectDto
    {
        int ProjectId { get; set; }
        int ClientId { get; set; }
        string Name { get; set; }
    }
}
