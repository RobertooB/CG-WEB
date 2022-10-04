using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;


using AplicativoWebIt.Permissions;
using AplicativoWebIt.Models;

namespace AplicativoWebIt.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {


        public ActionResult Index()
        {
            return View();
        }

        //[Authorize]
        [PermissionsRol(Rol.Admin)]
        public ActionResult Admin()
        {
            return View();
        }


        [PermissionsRol(Rol.Designer)]
        public ActionResult Designer()
        {
            return View();
        }

        public ActionResult CerrarSesion()
        {
            FormsAuthentication.SignOut();
            Session["User"] = null;
            return RedirectToAction("Index", "Access");
        }
    }
}