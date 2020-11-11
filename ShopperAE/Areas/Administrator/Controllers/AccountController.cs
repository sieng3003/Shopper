using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace ShopperAE.Areas.Administrator.Controllers
{
    public class AccountController : Controller
    {

        Models.AdminContext dbLog = new Models.AdminContext();
        Repository.ShopDAO dao = new Repository.ShopDAO();
        // GET: Administrator/Account
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Models.Administrator user)
        {
            BLL.UserBusinessLayer bal = new BLL.UserBusinessLayer();
            if(bal.IsValidUser(user))
            {
                FormsAuthentication.SetAuthCookie(user.adAcc, false);
                return RedirectToAction("Index","Home");
            }
            else
            {
                ModelState.AddModelError("CredentialErro", "Invalid User or Password");
                return View("Login");
            }

        }
        //[HttpPost]
        //[ValidateAntiForgeryToken()]
        //public ActionResult Login(Models.Administrator adLogin)
        //{

        //    try
        //    {
        //        var model = dbLog.Administrators.SingleOrDefault(a => a.adAcc.Equals(adLogin.adAcc));
        //        if (model != null)
        //        {
        //            if (model.adPass.Equals(dao.Encrypt(adLogin.adPass)))
        //            {
        //                Session["accname"] = model.adAcc;
        //                return RedirectToAction("Index", "Home");
        //            }
        //            else
        //            {
        //                Session["accname"] = null;
        //                ViewBag.LoginError = "Sai tài khoản hoặc mật khẩu.";
        //            }
        //        }
        //        else
        //        {
        //            Session["accname"] = null;
        //            ViewBag.LoginError = "Sai tài khoản hoặc mật khẩu.";
        //        }
        //    }
        //    catch (Exception)
        //    {
        //        Session["accname"] = null;
        //        ViewBag.LoginError = "Sai tài khoản hoặc mật khẩu.";
        //    }
        //    return View();
        //}
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Register(AdministratorController administrator)
        //{

        //    //if (!ModelState.IsValid)
        //    //{
        //    //    return View(administrator);
        //    //}
        //    //var user = _mapper.Map<User>(administrator);
        //    //user.UserName = administrator.Email;
        //    ////var result = await _userManager.(user, userModel.Password);
        //    //if (!result.Succeeded)
        //    //{
        //    //    foreach (var error in result.Errors)
        //    //    {
        //    //        ModelState.AddModelError(error.Code, error.Description);
        //    //    }
        //    //    return View(administrator);
        //    //}
        //    //await _userManager.AddToRoleAsync(user, "Visitor");
        //    //return RedirectToAction(nameof(HomeController.Index), "Home");
        //    return View();
        //}
        //public ActionResult Logout()
        //{
        //    System.Web.Security.FormsAuthentication.SignOut();
        //    Session["accname"] = null;
        //    return RedirectToAction("Login", "Account");
        //}

        public ActionResult logout()
        {
            TempData["b"] ="Bạn Đã Đăng Xuất Thành Công";
            return RedirectToAction("Login");
                
        }

    }
}