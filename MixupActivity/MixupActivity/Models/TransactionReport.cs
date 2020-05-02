using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MixupActivity.Enum;

namespace MixupActivity.Models
{
    public class TransactionReport
    {
        public Guid TranscationGuid { get; set; }

        public Enums.TransactionType TranscationType { get; set; }

        public virtual Guid TranscationForGuid { get; set; }

        public decimal Amount { get; set; }

        public decimal ReturnedAmount { get; set; }

        public DateTime TransactionDate { get; set; }

        //public bool? IsApproved { get; set; }

        public virtual Guid PersonGuid { get; set; }

        public virtual Person Person { get; set; }

        public virtual TransactionFor TransactionFor { get; set; }

        public decimal Interest { get; set; }

        public DateTime CurrentDate { get; set; }

        public int TotalDays { get; set; }

        public decimal CalculatedInterest { get; set; }
    }
}