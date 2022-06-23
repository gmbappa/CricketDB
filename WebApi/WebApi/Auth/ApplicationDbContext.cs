using WebApi.Model;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace WebApi.Auth
{
    public class ApplicationDbContext : IdentityDbContext<IdentityUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }
        public virtual DbSet<Boundary> Boundaries { get; set; }
        public virtual DbSet<DotBall> DotBalls { get; set; }
        public virtual DbSet<StrikeRate> StrikeRates { get; set; }
        public virtual DbSet<Wicket> Wickets { get; set; }
        public DbSet<BallsType> BallsTypes { get; set; }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

           // builder.Entity<Boundary>()
           // .HasKey(p => new {  p.BallsType,p.BoundaryType,p.Date, p.UserID });
           // builder.Entity<DotBall>()
           // .HasKey(p => new {  p.BallsType,p.Date,p.UserID });
           // builder.Entity<StrikeRate>()
           // .HasKey(p => new {  p.BallsType,p.Date,p.UserID });
           // builder.Entity<Wicket>()
           //.HasKey(p => new { p.BallsType,p.Date,p.UserID });

        }
    }
}
