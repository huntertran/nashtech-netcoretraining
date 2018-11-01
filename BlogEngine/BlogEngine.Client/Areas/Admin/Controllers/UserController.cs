namespace BlogEngine.Client.Areas.Admin.Controllers
{
    using Microsoft.AspNetCore.Authorization;
    using Microsoft.AspNetCore.Mvc;

    [Area(nameof(Admin))]
    [Authorize(Policy = "RequireAdmin")]
    public class UserController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}