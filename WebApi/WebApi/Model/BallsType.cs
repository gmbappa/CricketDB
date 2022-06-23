using System.ComponentModel.DataAnnotations;

namespace WebApi.Model
{
    public class BallsType
    {
        public int Id { get; set; }

        [StringLength(20)]
        public string Name { get; set; } = string.Empty;
    }
}
