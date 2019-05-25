using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MixupActivity.Models
{
    public class Person
    {
        [Key]
        [Display(Name = "Transaction For")]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid PersonGuid { get; set; }

        [Display(Name = "User Name")]
        public string LoginId { get; set; }

        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Display(Name = "Name")]
        public string PersonName { get; set; }

        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [DataType(DataType.PhoneNumber)]
        public string Mobile { get; set; }

        public virtual ICollection<Transaction> Transacctions { get; set; }

    }
}