using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static MixupActivity.Enum.Enums;

namespace MixupActivity.Models
{
    public class BalanceSheetItem
    {
        public string BalancesheetItem { get; set; }

        public decimal Amount { get; set; }

        public TransactionType Transaction { get; set; }
    }
}