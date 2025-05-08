
namespace LaunchAPI.Contracts.DomainModels
{
    public interface ICampaign
    {
        int CampaignId { get; set; }
        int ClientId { get; set; }
        int ProjectId { get; set; }
        string Name { get; set; }
    }
}
