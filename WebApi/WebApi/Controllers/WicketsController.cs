using WebApi.Auth;
using WebApi.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class WicketsController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public WicketsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Wickets
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Wicket>>> GetWickets()
        {
            string userId = User.Claims.First(c => c.Type == "UserID").Value;
            return   _context.Wickets.Where(x=>x.UserID== userId).ToList();
            // return await _context.Wickets.ToListAsync();
        }

        // GET: api/Wickets/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Wicket>> GetWicket(int id)
        {
            var Wicket = await _context.Wickets.FindAsync(id);

            if (Wicket == null)
            {
                return NotFound();
            }

            return Wicket;
        }

        // PUT: api/Wickets/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutWicket(int id, Wicket wicket)
        {
            if (id != wicket.Id)
            {
                return BadRequest();
            }
            var date = Convert.ToDateTime(wicket.Date).ToString("yyyyMMdd");
            wicket.Date = date;

            _context.Entry(wicket).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                throw;
                //if (!WicketExists(id))
                //{
                //    return NotFound();
                //}
                //else
                //{
                //    throw;
                //}
            }

            return NoContent();
        }

        // POST: api/Wickets
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Wicket>> PostWicket(Wicket wicket)
        {
            // var date = Convert.ToDateTime(wicket.Date).ToString("yyyyMMdd");
            string userId = User.Claims.First(c => c.Type == "UserID").Value;
            wicket.UserID = userId;
            if (!WicketExists(wicket))
            {
                _context.Wickets.Add(wicket);
                await _context.SaveChangesAsync();
            }
            else
            {
                return Ok( new {data="Dublicate Exists!"});
            }           

            return CreatedAtAction("GetWicket", new { id = wicket.Id }, wicket);
        }

        // DELETE: api/Wickets/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteWicket(int id)
        {
            var Wicket = await _context.Wickets.FindAsync(id);
            if (Wicket == null)
            {
                return NotFound();
            }

            _context.Wickets.Remove(Wicket);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool WicketExists(Wicket wicket)
        {
            //bool value = true;
           // var result = _context.Wickets.Where(x => (x.Date == wicket.Date) && ((x.UserID == wicket.UserID) || (x.BallsTypeId == wicket.BallsTypeId))).ToList();
            //if (result.Count > 0)
            //    return false;
            //else return value;
              return _context.Wickets.Any(x => (x.Date == wicket.Date) && ((x.UserID == wicket.UserID) && (x.BallsTypeId == wicket.BallsTypeId)));
        }

    }
}
