using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AbInDenUrlaub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FerienwohnungController : ControllerBase
    {

        private readonly Projekt1Context context; 
        
        public FerienwohnungController(Projekt1Context context)
        {
            this.context = context;
        }
    }
}
