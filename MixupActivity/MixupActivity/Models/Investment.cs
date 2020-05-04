using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;
using MixupActivity.Enum;

namespace MixupActivity.Models
{
    public class Investment
    {
        [Key]
        [Display(Name = "Investment")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid InvestmentGuid { get; set; }

        [Display(Name = "Investment Name")]
        [Required]
        public string InvestmentName { get; set; }

        [Display(Name = "Amount")]
        [Required]
        public int Amount { get; set; }

        [Display(Name = "Investment Date")]
        [DataType(DataType.Date)]
        [Required]
        public DateTime InvestmentDate { get; set; }

        [Display(Name = "Investment Type")]
        [Required]
        public string InvestmentType { get; set; }

        [Required]
        [Range(1, int.MaxValue, ErrorMessage = "Transaction Type is required.")]
        [Display(Name = "Transcation Type")]
        public Enums.TransactionType TranscationType { get; set; }

        [Display(Name = "Monthly Recurrent")]
        public bool IsMonthlyRecurrent { get; set; }

        
    }
}