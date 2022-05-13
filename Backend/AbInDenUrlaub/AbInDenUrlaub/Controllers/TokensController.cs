using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace AbInDenUrlaub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TokensController : ControllerBase
    {
        private readonly Projekt1Context context;


        public TokensController(Projekt1Context context)
        {
            this.context = context;
        }

        [HttpPost]
        public async Task<ActionResult<List<Token>>> AddToken(Token token)
        {
            context.Tokens.Add(token);
            await context.SaveChangesAsync();

            return Ok(await context.Tokens.ToListAsync());
        }
    }
}
