
namespace LaunchAPI.Contracts.DomainModels
{
    public interface IDash
    {
        int DashId { get; set; }
        int? ProjectId { get; set; }
        int ClientId { get; set; }
        int? UserId { get; set; }
    }
}
