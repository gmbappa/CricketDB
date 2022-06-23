using WebApi.Auth;
using WebApi.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Data.SqlClient;
using System.Data;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StrikeRatesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;
        private readonly IConfiguration _configuration;

        public StrikeRatesController(ApplicationDbContext context, IConfiguration configuration)
        {
            _context = context;
            _configuration = configuration;
        }

        // GET: api/StrikeRates
        [HttpGet]
        public async Task<ActionResult<IEnumerable<StrikeRate>>> GetStrikeRates()
        {
            //return await _context.StrikeRates.ToListAsync();
            string userId = User.Claims.First(c => c.Type == "UserID").Value;
            return _context.StrikeRates.Where(x => x.UserID == userId).ToList();
        }

        // GET: api/StrikeRates/5
        [HttpGet("{id}")]
        public async Task<ActionResult<StrikeRate>> GetStrikeRate(int id)
        {
            var StrikeRate = await _context.StrikeRates.FindAsync(id);

            if (StrikeRate == null)
            {
                return NotFound();
            }

            return StrikeRate;
        }

        // PUT: api/StrikeRates/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutStrikeRate(int id, StrikeRate StrikeRate)
        {
            if (id != StrikeRate.Id)
            {
                return BadRequest();
            }
          //  var date = Convert.ToDateTime(StrikeRate.Date).ToString("yyyyMMdd");
          //  StrikeRate.Date = date;

            _context.Entry(StrikeRate).State = EntityState.Modified;

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

        // POST: api/StrikeRates
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<StrikeRate>> PostStrikeRate(StrikeRate StrikeRate)
        {
            // var date = Convert.ToDateTime(StrikeRate.Date).ToString("yyyyMMdd");
            string userId = User.Claims.First(c => c.Type == "UserID").Value;
            StrikeRate.UserID = userId;
            if (!StrikeRateExists(StrikeRate))
            {
                _context.StrikeRates.Add(StrikeRate);
                var tt = await _context.SaveChangesAsync();
                int item = GetResult(userId);
                return Ok(new { data = item });
            }
            else
            {
                return Ok(new { data = "Dublicate Exists!" });
            }

            return CreatedAtAction("GetStrikeRate", new { id = StrikeRate.Id }, StrikeRate);
        }

        // DELETE: api/StrikeRates/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteStrikeRate(int id)
        {
            var StrikeRate = await _context.StrikeRates.FindAsync(id);
            if (StrikeRate == null)
            {
                return NotFound();
            }

            _context.StrikeRates.Remove(StrikeRate);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool StrikeRateExists(StrikeRate StrikeRate)
        {
            //bool value = true;
            //var result = _context.StrikeRates.Where(x => (x.Date == StrikeRate.Date) && ((x.UserID == StrikeRate.UserID) || (x.BallsTypeId == StrikeRate.BallsTypeId))).ToList();
            //if (result.Count > 0)
            //    return false;
            //else return value;
           return _context.StrikeRates.Any(x => (x.Date == StrikeRate.Date) && ((x.UserID == StrikeRate.UserID) && (x.BallsTypeId == StrikeRate.BallsTypeId)));
        }

        private int GetResult(string userId)
        {
            int result = 0;
            DataTable t =new DataTable();
            var connectionString = _configuration.GetConnectionString("ConnStr");
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spGetRsult", con);
                cmd.Parameters.AddWithValue("@UserID", userId);

                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();               
              
                while (!rdr.IsClosed)
                {
                    t = new DataTable();
                    t.Load(rdr);                    
                }
                result = Convert.ToInt32(t.Rows[0][0].ToString());
            }
            return result;
        }
    }
}
