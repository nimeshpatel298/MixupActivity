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
    }
}