using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AbInDenUrlaub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GebotController : ControllerBase
    {

        private readonly Projekt1Context context;

        public GebotController(Projekt1Context context)
        {
            this.context = context;
        }
    }
}
