using WebApi.Auth;
using WebApi.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DotBallController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public DotBallController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/DotBall
        [HttpGet]
        public async Task<ActionResult<IEnumerable<DotBall>>> GetDotBall()
        {           
            //return await _context.DotBalls.ToListAsync();
            string userId = User.Claims.First(c => c.Type == "UserID").Value;
            return _context.DotBalls.Where(x => x.UserID == userId).ToList();
        }

        // GET: api/DotBall/5
        [HttpGet("{id}")]
        public async Task<ActionResult<DotBall>> GetDotBall(int id)
        {
            var DotBall = await _context.DotBalls.FindAsync(id);

            if (DotBall == null)
            {
                return NotFound();
            }

            return DotBall;
        }

        // PUT: api/DotBall/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutDotBall(int id, DotBall DotBall)
        {
            if (id != DotBall.Id)
            {
                return BadRequest();
            }
            var date = Convert.ToDateTime(DotBall.Date).ToString("yyyyMMdd");
            DotBall.Date = date;

            _context.Entry(DotBall).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                throw;               
            }

            return NoContent();
        }

        // POST: api/DotBall
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<DotBall>> PostDotBall(DotBall DotBall)
        {        
            string userId = User.Claims.First(c => c.Type == "UserID").Value;
            DotBall.UserID = userId;
            if (!DotBallExists(DotBall))
            {
                _context.DotBalls.Add(DotBall);
                await _context.SaveChangesAsync();
            }
            else
            {
                return Ok( new {data="Dublicate Exists!"});
            }           

            return CreatedAtAction("GetDotBall", new { id = DotBall.Id }, DotBall);
        }

        // DELETE: api/DotBall/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteDotBall(int id)
        {
            var DotBall = await _context.DotBalls.FindAsync(id);
            if (DotBall == null)
            {
                return NotFound();
            }

            _context.DotBalls.Remove(DotBall);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool DotBallExists(DotBall DotBall)
        {           
              return _context.DotBalls.Any(x => (x.Date == DotBall.Date) && ((x.UserID == DotBall.UserID) && (x.BallsTypeId == DotBall.BallsTypeId)));
        }

    }
}
