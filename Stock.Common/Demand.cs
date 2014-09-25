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

        public int Distributional { get; set; }

        public int Common
        {
            get
            {
                return Basic + Optional + Distributional;
            }
        }

        public int this[DemandType dtype]
        {
            get
            {
                switch (dtype)
                {
                    case DemandType.Basic:
                        return Basic;
                    case DemandType.Distributional:
                        return Distributional;
                    case DemandType.Optional:
                    default:
                        return Optional;
                }
            }

            set
            {
                switch (dtype)
                {
                    case DemandType.Basic:
                        Basic = value;
                        break;
                    case DemandType.Distributional:
                        Distributional = value;
                        break;
                    case DemandType.Optional:
                    default:
                        Optional = value;
                        break;
                }
            }
        }
    }
}
