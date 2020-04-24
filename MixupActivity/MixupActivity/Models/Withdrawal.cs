using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MixupActivity.Models
{
    public class Withdrawal
    {
        [Key]
        public Guid TranscationGuid { get; set; }

        [Display(Name = "Transaction For")]
        public virtual Guid PersonGuid { get; set; }

        [Display(Name = "Transaction Of")]
        public virtual Person Person { get; set; }

        [Display(Name = "Transcation Date")]
        [DataType(DataType.Date)]
        public DateTime TransactionDate { get; set; }
      
        [Required(ErrorMessage = "Transaction For is required.")]
        [Display(Name = "Transcation For")]
        public virtual Guid TranscationForGuid { get; set; }

        [DataType(DataType.Currency)]
        public decimal Amount { get; set; }

        [Display(Name = "Interest")]
        public decimal Interest { get; set; }
    }
}