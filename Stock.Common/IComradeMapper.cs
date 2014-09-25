using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock.Common
{
    public interface IComradeMapper
    {
        Comrade Map(IDataReader reader);

        Dictionary<int, Demand> MapDemands(IDataReader reader);
    }
}
