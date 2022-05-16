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
            IList<Rechnungshistorieeintrag> rechnungshistorie = await context.Rechnungshistorieeintrags
                 .Include(n => n.User)
                 .Include(a => a.Angebot).ToListAsync();

            List<Rechnungshistorieeintrag> list = await context.Rechnungshistorieeintrags.ToListAsync();

            foreach(Rechnungshistorieeintrag item  in list)
            {
                if(item.UserId == id)
                {
                    list.Remove(item);
                }
            }


            return Ok(list);
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
