using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AbInDenUrlaub.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class Bewertung : ControllerBase
    {

        private readonly Projekt1Context context;

        public Bewertung(Projekt1Context context)
        {
            this.context = context;
        }
    }
}
