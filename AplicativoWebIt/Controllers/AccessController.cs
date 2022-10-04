using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;


using AplicativoWebIt.Models;
using AplicativoWebIt.Logic;
using System.Web.Security;

namespace AplicativoWebIt.Controllers
{
    public class AccessController : Controller
    {
        // GET: Acceso
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(string name_user, string password)
        {
            Users object_ = new Logic_user().getUsers(name_user, password);

            if (object_.name != null & object_.lastname != null)
            {
                FormsAuthentication.SetAuthCookie(object_.name_user, false);

                Session["User"] = object_;

                if (object_.rol == Rol.Admin)
                {
                    return RedirectToAction("Admin", "Home");
                }

                if (object_.rol == Rol.Designer)
                {
                    return RedirectToAction("Designer", "Home");
                }
            }
            return View();
        }
    }
}