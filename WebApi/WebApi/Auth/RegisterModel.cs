using System.ComponentModel.DataAnnotations;

namespace WebApi.Auth
{
    public class RegisterModel
    {
        [Required(ErrorMessage = "User Name is required")]
        public string? UserName { get; set; }

        [EmailAddress]      
        public string? Email { get; set; }

        [Required(ErrorMessage = "Password is required")]
        public string? Password { get; set; }
        public string? FullName { get; set; }

    }
}
