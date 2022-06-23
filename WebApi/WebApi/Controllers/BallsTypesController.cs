using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebApi.Auth;
using WebApi.Model;

namespace InspectionAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BallsTypesController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public BallsTypesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/BallsTypes
        [HttpGet]
        public async Task<ActionResult<IEnumerable<BallsType>>> GetBallsTypes()
        {
            return await _context.BallsTypes.ToListAsync();
        }

        // GET: api/BallsTypes/5
        [HttpGet("{id}")]
        public async Task<ActionResult<BallsType>> GetBallsType(int id)
        {
            var BallsType = await _context.BallsTypes.FindAsync(id);

            if (BallsType == null)
            {
                return NotFound();
            }

            return BallsType;
        }

        // PUT: api/BallsTypes/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutBallsType(int id, BallsType BallsType)
        {
            if (id != BallsType.Id)
            {
                return BadRequest();
            }

            _context.Entry(BallsType).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!BallsTypeExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/BallsTypes
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<BallsType>> PostBallsType(BallsType BallsType)
        {
            _context.BallsTypes.Add(BallsType);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetBallsType", new { id = BallsType.Id }, BallsType);
        }

        // DELETE: api/BallsTypes/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteBallsType(int id)
        {
            var BallsType = await _context.BallsTypes.FindAsync(id);
            if (BallsType == null)
            {
                return NotFound();
            }

            _context.BallsTypes.Remove(BallsType);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool BallsTypeExists(int id)
        {
            return _context.BallsTypes.Any(e => e.Id == id);
        }
    }
}
