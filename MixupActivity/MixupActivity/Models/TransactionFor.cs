using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MixupActivity.Models
{
    public class TransactionFor
    {
        [Key]
        public Guid TranscationForGuid { get; set; }

        [Required]
        public string TranscationFor { get; set; }

        [Required]
        public int TransactionType { get; set; }

        public virtual ICollection<Transaction> Transactions { get; set; }
    }
}