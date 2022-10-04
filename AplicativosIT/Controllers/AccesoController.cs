using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


using AplicativosIT.Models;
using AplicativosIT.Logic;
using System.Web.Security;

namespace AplicativosIT.Controllers
{
    public class AccesoController : Controller
    {
        // GET: Acceso
        public ActionResult Index()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Index(string name_user, string password)
        {
            Users object_ = new Lo_User().getUsers(name_user, password);

            if (object_.name != null & object_.lastname != null)
            {


                FormsAuthentication.SetAuthCookie(object_.name_user, false);

                Session["User"] = object_;

                return RedirectToAction("Default", "Home");
            }



            return View();
        }
    }
}