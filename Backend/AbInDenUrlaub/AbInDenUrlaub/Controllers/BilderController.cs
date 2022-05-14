using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AbInDenUrlaub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BilderController : ControllerBase
    {

        private readonly Projekt1Context context;

        public BilderController(Projekt1Context context)
        {
            this.context = context;
        }
    }
}
