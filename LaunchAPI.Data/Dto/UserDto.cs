
using LaunchAPI.Contracts.Dto;

namespace LaunchAPI.Data.Dto
{
    public class UserDto : IAppUserDto
    {
        public int UserId { get; set; }
        public int ClientId { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string? LastName { get; set; }
        public string? MiddleName { get; set; }
    }
}
