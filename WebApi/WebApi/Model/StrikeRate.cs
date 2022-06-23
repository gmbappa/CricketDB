namespace WebApi.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
 

    [Table("StrikeRate")]
    public partial class StrikeRate
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Required]
        public int Id { get; set; }       
        public int Runs { get; set; }     
        public int Balls { get; set; }

        //[Key]
        //[Column(Order = 1)]
        [Required]
        [StringLength(12)]
        public string? Date { get; set; }

        //[Key]
        //[Column(Order = 2)]
        [StringLength(450)]
        public string? UserID { get; set; }

        //[Key]
        //[Column(Order = 0)]      
        public int BallsTypeId { get; set; }

        public BallsType? BallsType { get; set; }



    }
}
