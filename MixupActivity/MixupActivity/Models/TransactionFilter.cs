using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MixupActivity.Models
{
    public class TransactionsWithFilter
    {
        public IEnumerable<Transaction> Transactions { get; set; }
        public Guid PersonGuid { get; set; }

        public bool IsMonthlyEMI { get; set; }

        public bool ReturnMoneySelf { get; set; }

        public bool ReturnMoneyThirdParty { get; set; }

        public bool InterestSelf { get; set; }

        public bool InterestThirdParty { get; set; }

        public bool WithDrawMoneySelf { get; set; }
        public bool WithDrawMoneyThirdParty { get; set; }
        public bool Sip { get; set; }
        public bool Expense { get; set; }

    }
}