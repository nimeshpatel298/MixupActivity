using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MixupActivity.Models
{
    public class Technology
    {
        [Key]

        public Guid TechnologyGuid { get; set; }

        [Display(Name = "Technology")]
        [Required]
        public string TechnologyName { get; set; }

        [Required]
        public int Priority { get; set; }

        public virtual ICollection<TechnologyContent> TechnologyContents { get; set; }
    }
}