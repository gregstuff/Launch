
using LaunchAPI.Contracts.Dto;

namespace LaunchAPI.Data.Dto
{
    public class ClientDto : IClientDto
    {
        public int ClientId { get; set; }
        public int PlanId { get; set; }
        public string Name { get; set; }
        public string WebsiteURL { get; set; }
        public string Email { get; set; }
    }
}
