using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock.Common
{
    public static class Stock
    {
        private static IStockRepository _stockRepository = new StockRepository("Server=119.9.76.133;Database=gazeta;User Id=sa;Password=16tYoca7A6AUSw6YE29LO8A+O;");

        private static IEnumerable<Issue> _issues = null;

        public static Issue LastIssue
        {
            get
            {
                return Issues.OrderByDescending(i => i.Number).First<Issue>();
            }
        }

        public static IEnumerable<Issue> Issues
        {
            get
            {
                return _issues ?? _stockRepository.GetIssues();
            }
        }

        public static Dictionary<int, int> Items { get; set; }
    }
}
