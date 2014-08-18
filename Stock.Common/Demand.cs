using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock.Common
{
    public class Demand
    {
        public int Basic { get; set; }
        
        public int Optional { get; set; }

        public int Distribute { get; set; }

        public int Common
        {
            get
            {
                return Basic + Optional + Distribute;
            }
        }
    }
}
