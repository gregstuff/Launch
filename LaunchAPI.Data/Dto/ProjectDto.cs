
using LaunchAPI.Contracts.Dto;

namespace LaunchAPI.Data.Dto
{
    public class ProjectDto : IProjectDto
    {
        public int ProjectId { get; set; }
        public int ClientId { get; set; }
        public string Name { get; set; }
    }
}
