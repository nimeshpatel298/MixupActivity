using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;

namespace MixupActivity.Controllers
{
    using System.Web.Security;
    using log4net;
    using MixupActivity.Context;
    using MixupActivity.Models;

    public class AccountController : Controller
    {
        private static readonly ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(Person model, string returnUrl)
        {
            if (ModelState.IsValid)
            {
                using (AppContext context = new AppContext())
                {
                    var user = context.Persons.FirstOrDefault(person => person.LoginId.Equals(model.LoginId) && person.Password.Equals(model.Password));

                    if (user != null)
                    {

                        var person = JsonConvert.SerializeObject(new { PersonGuid = user.PersonGuid, LoginId = user.LoginId, PersonName = user.PersonName, Email = user.Email, IsAdmin = user.IsAdmin });
                        var ticket = new FormsAuthenticationTicket(1, user.PersonName, DateTime.Now, DateTime.Now.AddMinutes(30), true, person, FormsAuthentication.FormsCookiePath);
                        var hash = FormsAuthentication.Encrypt(ticket);
                        var ck = new HttpCookie("AuthCookie", hash);
                        if (ticket.IsPersistent)
                            ck.Expires = ticket.Expiration;


                        Response.Cookies.Add(ck);

                        if (Url.IsLocalUrl(returnUrl) && returnUrl.Length > 1 && returnUrl.StartsWith("/")
                            && !returnUrl.StartsWith("//") && !returnUrl.StartsWith("/\\"))
                        {
                            return Redirect(returnUrl);
                        }

                        return RedirectToAction("Index", "Transactions");

                    }
                    ModelState.AddModelError("LoginFailed", "The user name or password provided is incorrect.");
                }
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        public ActionResult LogOff()
        {

            FormsAuthentication.SignOut();

            HttpCookie cookie1 = new HttpCookie("AuthCookie", "");
            cookie1.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(cookie1);
            return RedirectToAction("Login", "Account");
        }


        [AllowAnonymous]
        public ActionResult Register()
        {
            return View(new Person());
        }

        //
        // POST: /Account/Register
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Register(Person model)
        {
            try
            {
                
                if (ModelState.IsValid)
                {
                    using (AppContext context = new AppContext())
                    {
                        context.Persons.Add(model);
                        var result = context.SaveChanges();
                        if (result >= 0)
                        {
                            return RedirectToAction("Index", "Transactions");
                        }
                        ModelState.AddModelError("RegisterFailed", "Failed to register. Please try again.");
                    }
                }
            }
            catch(Exception ex)
            {
                log.Error("logging info", ex);
            }

            // If we got this far, something failed, redisplay form
            return View(model);
        }

        
    }
}