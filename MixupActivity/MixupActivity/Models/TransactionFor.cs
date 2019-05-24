using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MixupActivity.Models
{
    public class TransactionFor
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid TranscationForGuid { get; set; }

        [Required]
        public string TranscationFor { get; set; }

        [Required]
        public int TransactionType { get; set; }

        public virtual ICollection<Transaction> Transactions { get; set; }
    }
}