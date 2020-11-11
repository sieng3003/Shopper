﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopperAE.Areas.Administrator.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        Models.AdminContext db = new Models.AdminContext();
        Repository.ShopDAO dao = new Repository.ShopDAO();
        [HandleError]
        public ActionResult Index()
        {
            return View();
            //if (Session["accname"] == null)
            //{
            //    Session["accname"] = null;
            //    return RedirectToAction("Login", "Account");
            //}
            //else
            //{
            //    return View();
            //}
        }
    }
}