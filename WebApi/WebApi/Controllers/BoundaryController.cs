using WebApi.Auth;
using WebApi.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BoundaryController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public BoundaryController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Boundary
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Boundary>>> GetBoundary()
        {           
         //   return await _context.Boundaries.ToListAsync();
            string userId = User.Claims.First(c => c.Type == "UserID").Value;
            return _context.Boundaries.Where(x => x.UserID == userId).ToList();
        }

        // GET: api/Boundary/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Boundary>> GetBoundary(int id)
        {
            var Boundary = await _context.Boundaries.FindAsync(id);

            if (Boundary == null)
            {
                return NotFound();
            }

            return Boundary;
        }

        // PUT: api/Boundary/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutBoundary(int id, Boundary Boundary)
        {
            if (id != Boundary.Id)
            {
                return BadRequest();
            }
            var date = Convert.ToDateTime(Boundary.Date).ToString("yyyyMMdd");
            Boundary.Date = date;

            _context.Entry(Boundary).State = EntityState.Modified;

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

        // POST: api/Boundary
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Boundary>> PostBoundary(Boundary Boundary)
        {           
            string userId = User.Claims.First(c => c.Type == "UserID").Value;
            Boundary.UserID = userId;
            if (!BoundaryExists(Boundary))
            {
                _context.Boundaries.Add(Boundary);
                await _context.SaveChangesAsync();
            }
            else
            {
                return Ok( new {data="Dublicate Exists!"});
            }           

            return CreatedAtAction("GetBoundary", new { id = Boundary.Id }, Boundary);
        }

        // DELETE: api/Boundary/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteBoundary(int id)
        {
            var Boundary = await _context.Boundaries.FindAsync(id);
            if (Boundary == null)
            {
                return NotFound();
            }

            _context.Boundaries.Remove(Boundary);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool BoundaryExists(Boundary Boundary)
        {           
              return _context.Boundaries.Any(x => (x.Date == Boundary.Date) && ((x.UserID == Boundary.UserID) && (x.BallsTypeId == Boundary.BallsTypeId)));
        }

    }
}
