
namespace LaunchAPI.Contracts.DomainModels
{
    public interface ITask
    {
        int TaskId { get; set; }
        int ClientId { get; set; }
        int ProjectId { get; set; }
        int? UserId { get; set; }
        string Name { get; set; }
    }
}
