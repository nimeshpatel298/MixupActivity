using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MixupActivity.Enum
{
    public class Enums
    {
        public enum TransactionType
        {
            [Display(Name = "Credit")]
            Credit = 1,
            [Display(Name = "Debit")]
            Debit,
            //[Display(Name = "Credit From Outside")]
            //CreditFromOutside,
            //[Display(Name = "Debit For Outside")]
            //DebitForOutside
        }
    }
}