using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MixupActivity.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Page is under construnction.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Contact me at";

            return View();
        }
    }
}