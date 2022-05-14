using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

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
    }
}
