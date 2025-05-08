
namespace LaunchAPI.Contracts.DomainModels
{
    public interface IUser
    {
        public int UserId { get; set; }
        public int ClientId { get; set; }
        public string Email { get; set; }
        public string FirstName { get; set; }
        public string? LastName { get; set; }
        public string? MiddleName { get; set; }
    }
}
