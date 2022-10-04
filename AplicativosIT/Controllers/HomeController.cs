using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;


using AplicativosIT.Permissions;
using AplicativosIT.Models;

namespace AplicativosIT.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {


        public ActionResult Default()
        {
            return View();
        }

        //[Authorize]
        [PermissionsRol(Rol.Admin)]
        public ActionResult DefaultAdmin()
        {
            ViewBag.Message = "bienvenido a la pagina about";

            return View();
        }


        [PermissionsRol(Rol.Admin)]
        public ActionResult Contact()
        {
            ViewBag.Message = "bienvenido a la pagina contact";

            return View();
        }


        public ActionResult SinPermissions()
        {
            ViewBag.Message = "Usted no cuenta con permisos para ver esta pagina";

            return View();
        }

        //public ActionResult CerrarSesion()
        //{

        //    FormsAuthentication.SignOut();
        //    Session["Usuario"] = null;


        //    return RedirectToAction("Index", "Acceso");



        //}


    }
}