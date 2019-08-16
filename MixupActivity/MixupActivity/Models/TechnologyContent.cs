using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MixupActivity.Models
{
    public class TechnologyContent
    {
        [Key]
        public Guid TechnologyContentGuid { get; set; }

        [Required]
        public string Topic { get; set; }

        public string Description { get; set; }

        public string Example { get; set; }
        public string Link { get; set; }

        public int SeqNo { get; set; }

        public bool IsActive { get; set; }

        public virtual Guid TechnologyGuid { get; set; }
        public virtual Technology Technology { get; set; }
    }
}