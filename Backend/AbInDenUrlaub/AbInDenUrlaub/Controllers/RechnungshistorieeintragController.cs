using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Data.Entity.Core.EntityClient;

namespace AbInDenUrlaub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RechnungshistorieeintragController : ControllerBase
    {

        private readonly Projekt1Context context;

        public RechnungshistorieeintragController(Projekt1Context context)
        {
            this.context = context;
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<List<Rechnungshistorieeintrag>>> GetHistorie(int id)
        {
            List<Rechnungshistorieeintrag> rechnungshistorie = new List<Rechnungshistorieeintrag>();
            List<Rechnungshistorieeintrag> rechnungshistorieeintrags = await context.Rechnungshistorieeintrags.ToListAsync();

            foreach (var item in rechnungshistorie)
            {
                if(id == item.UserId)
                {
                    rechnungshistorie.Add(item);
                }
            }

            return Ok(rechnungshistorie.ToList());
        }

        [HttpGet]
        public async Task<ActionResult<List<Rechnungshistorieeintrag>>> Get()
        {
            IList<Rechnungshistorieeintrag> rechnungshistorie = await context.Rechnungshistorieeintrags 
                .Include(n => n.User)
                .Include(a => a.Angebot).ToListAsync();

            return Ok(rechnungshistorie.ToList());
        }
    }
}
