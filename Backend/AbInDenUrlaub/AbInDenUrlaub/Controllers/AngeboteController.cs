using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AbInDenUrlaub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AngeboteController : ControllerBase
    {
        private readonly Projekt1Context context;

        public AngeboteController(Projekt1Context context)
        {
            this.context = context;
        }
    }
}
