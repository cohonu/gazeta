using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock.Common
{
    public class StockRepository : IStockRepository
    {
        private readonly string _connectionString;
        
        public StockRepository(string connectionString = null)
        {
            this._connectionString = connectionString ?? "Server=.;Database=gazeta;Trusted_Connection=True;";
        }

        public List<Issue> GetIssues()
        {
            var issues = new List<Issue>();

            var quantities = new Dictionary<int, int>();

            using (SqlConnection connection = new SqlConnection(this._connectionString))
            {
                SqlCommand command = new SqlCommand("Stock_Get", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                connection.Open();

                Map(command.ExecuteReader(), (List<Issue>)issues, (Dictionary<int, int>)quantities);
            }

            return issues;
        }

        private static void Map(IDataReader reader, List<Issue> issues, Dictionary<int, int> quantities)
        {
            while (reader.Read())
            {
                var issue = (int)reader["IssueNumber"];
                var quantity = (int)reader["Quantity"];
                var receiptDate = (DateTimeOffset)reader["ReceiptDate"];
                
                issues.Add(new Issue
                    {
                        Number = issue,
                        ReceiptDate = receiptDate
                    });

                quantities.Add(issue, quantity);
            }
        }
    }
}
