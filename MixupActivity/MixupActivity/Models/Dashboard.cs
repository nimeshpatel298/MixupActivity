using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MixupActivity.Models;

namespace MixupActivity.Models
{
    public class Dashboard
    {

        public List<Deposit> Deposits { get; set; }

        public List<Investment> Investments { get; set; }
    }
}