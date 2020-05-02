using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MixupActivity.Models
{
    public class User
    {
        public Person Person { get; set; }
        public decimal Amount { get; set; }
    }
}