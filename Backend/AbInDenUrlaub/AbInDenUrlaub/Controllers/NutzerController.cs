using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace AbInDenUrlaub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NutzerController : ControllerBase
    {
        private readonly Projekt1Context context;

        public NutzerController(Projekt1Context context)
        {
            this.context = context;
        }

        [HttpGet]
        public async Task<ActionResult<List<Nutzer>>> Get()
        {
            return Ok(await context.Nutzers.ToListAsync());
        }

        [HttpPost]
        public async Task<ActionResult<List<Nutzer>>> AddNutzer(Nutzer nutzer)
        {
            context.Nutzers.Add(nutzer);
            await context.SaveChangesAsync();

            return Ok(await context.Nutzers.ToListAsync());
        }
    }
}
