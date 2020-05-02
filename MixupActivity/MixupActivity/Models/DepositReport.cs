using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MixupActivity.Models
{
    public class DepositReport
    {
        public DateTime MonthStartDate { get; set; }
        public DateTime MonthEndDate { get; set; }
        public List<User> Users { get; set; }
        public string MonthDesc { get; set; }
        public decimal TotalOfMonth { get; set; }
    }
}