using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace MixupActivity.Models
{
    public class CustomMembershipUser : MembershipUser
    {
        #region User Properties  
        public Guid PersonGuid { get; set; }
        public string LoginId { get; set; }
        public string Password { get; set; }
        public string PersonName { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }

        #endregion
        public CustomMembershipUser()
        {

        }

        public CustomMembershipUser(Person user) : base("CustomMembership", user.LoginId, user.LoginId, user.Email, string.Empty, string.Empty, true, false, DateTime.Now, DateTime.Now, DateTime.Now, DateTime.Now, DateTime.Now)
        {
            PersonGuid = user.PersonGuid;
            LoginId = user.PersonName;
            PersonName = user.PersonName;
            Email = user.Email;
            Mobile = user.Mobile;
        }
    }
}