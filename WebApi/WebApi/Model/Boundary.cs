using Microsoft.EntityFrameworkCore;
using WebApi.Auth;
namespace WebApi.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;


    [Table("Boundary")]
    public partial class Boundary
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Required]     
        public int Id { get; set; } 
       
        [Required]
        public int NumberOfBoundary { get; set; }

        //[Key]
        //[Column(Order = 3)]       
        [Required]
        public int BoundaryType { get; set; }

        //[Key]
        //[Column(Order = 2)]      
        [StringLength(450)]
        public string? UserID { get; set; }

        //[Key]
        //[Column(Order = 1)]
        [Required]
        [StringLength(12)]
        public string? Date { get; set; }

        //[Key]
        //[Column(Order = 0)]       
        public int BallsTypeId { get; set; }     
        public BallsType? BallsType { get; set; }

    }
}
