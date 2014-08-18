using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock.Common
{
    public interface IStockRepository
    {
        void Get(out IEnumerable<Issue> issues, out IDictionary<int,int> items);
    }
}
