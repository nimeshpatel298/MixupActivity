﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using MixupActivity.Enum;

namespace MixupActivity.Models
{
    public class Deposit
    {
        [Key]
        public Guid TranscationGuid { get; set; }

        //[Required]
        //[Range(1, int.MaxValue, ErrorMessage = "Transaction Type is required.")]
        //[Display(Name = "Transcation Type")]
        //public Enums.TransactionType TranscationType { get; set; }

        [Required(ErrorMessage = "Transaction For is required.")]
        [Display(Name = "Transcation For")]
        public virtual Guid TranscationForGuid { get; set; }

        [DataType(DataType.Currency)]
        public decimal Amount { get; set; }

        [DataType(DataType.Currency)]
        [Display(Name = "Self Interest")]
        public decimal SelfInterest { get; set; }

        [DataType(DataType.Currency)]
        [Display(Name = "External Interest")]
        public decimal ExternalInterest { get; set; }

        [Display(Name = "Transcation Date")]
        [DataType(DataType.DateTime)]
        public DateTime TransactionDate { get; set; }

        [Display(Name = "Approved?")]
        public bool? IsApproved { get; set; }


        [Display(Name = "Transaction For")]
        public virtual Guid PersonGuid { get; set; }

        [Display(Name = "Transaction Of")]
        public virtual Person Person { get; set; }

        [Display(Name = "Transaction For1")]
        public virtual TransactionFor TransactionFor { get; set; }

        [Display(Name = "Interest")]
        public decimal Interest { get; set; }
    }
}