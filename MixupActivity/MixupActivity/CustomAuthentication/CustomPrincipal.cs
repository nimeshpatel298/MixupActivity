using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;

namespace MixupActivity.CustomAuthentication
{
    public class CustomPrincipal : IPrincipal
    {
        public string LoginId { get; set; }
        public Guid PersonGuid { get; set; }
        public string PersonName { get; set; }
        public string Email { get; set; }

        public IIdentity Identity
        {
            get; private set;
        }

        public CustomPrincipal(string username)
        {
            Identity = new GenericIdentity(username);
        }

        public bool IsInRole(string role)
        {
            throw new NotImplementedException();
        }
    }
}