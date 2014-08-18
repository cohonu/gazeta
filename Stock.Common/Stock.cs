using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock.Common
{
    public static class Stock
    {
        public static IStockRepository StockRepository = new StockRepository();

        public static List<Issue> Issues { get; set; }

        public static Dictionary<int, int> Items { get; set; }
    }
}
