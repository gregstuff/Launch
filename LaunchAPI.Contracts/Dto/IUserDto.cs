
namespace LaunchAPI.Contracts.Dto
{
    public interface IUserDto
    {
        int UserId { get; set; }
        int ClientId { get; set; }
        string Email { get; set; }
        string FirstName { get; set; }
        string? LastName { get; set; }
        string? MiddleName { get; set; }
    }
}
