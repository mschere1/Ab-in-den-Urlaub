using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AbInDenUrlaub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class WohnungsbilderController : ControllerBase
    {
        private readonly Projekt1Context context;

        public WohnungsbilderController(Projekt1Context context)
        {
            this.context = context; 
        }
    }
}
