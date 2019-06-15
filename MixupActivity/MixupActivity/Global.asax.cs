using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using MixupActivity.CustomAuthentication;
using MixupActivity.Models;
using Newtonsoft.Json;

namespace MixupActivity
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            log4net.Config.XmlConfigurator.Configure();
            
        }

        protected void Application_PostAuthenticateRequest(Object sender, EventArgs e)
        {
            try
            {
                HttpCookie authCookie = Request.Cookies["AuthCookie"];
                if (authCookie != null)
                {
                    FormsAuthenticationTicket authTicket = FormsAuthentication.Decrypt(authCookie.Value);

                    var serializeModel = JsonConvert.DeserializeObject<Person>(authTicket.UserData);
                    CustomPrincipal principal = new CustomPrincipal(authTicket.Name);
                    principal.Email = serializeModel.Email;
                    principal.LoginId = serializeModel.LoginId;
                    principal.PersonName = serializeModel.PersonName;
                    principal.PersonGuid = serializeModel.PersonGuid;
                    HttpContext.Current.User = principal;
                }
            }
            catch(Exception ex)
            {

            }
        }
    }
}
