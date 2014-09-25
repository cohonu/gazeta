using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication.Model
{
    public class ComradeListItem
    {
        public string Code { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string SecondName { get; set; }
        public int BasicDemand { get; set; }
        public int DistributeDemand { get; set; }
        public int OptionalDemand { get; set; }
    }
}