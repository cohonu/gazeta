using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock.Common
{
    public class ComradeMapper : IComradeMapper
    {
        private delegate void UpdateOperation(Demand demand, Dictionary<DemandType, int> quantities, DemandType type);

        private void UpdateDemand(Demand demand, Dictionary<DemandType, int> quantities, UpdateOperation op)
        {
            IEnumerable<DemandType> types = (IEnumerable<DemandType>)Enum.GetValues(typeof(DemandType));
            foreach (var type in types)
            {
                op(demand, quantities, type);
            }
        }


        public Comrade Map(IDataReader reader)
        {
            if (reader == null)
            {
                throw new ArgumentNullException("reader");
            }

            Comrade comrade = null;

            if (reader.Read())
            {
                comrade = new Comrade
                {
                    Id = (Guid)reader["Id"],
                    FirstName = (reader["FirstName"] == DBNull.Value) ? null : reader["FirstName"].ToString(),
                    SecondName = (reader["SecondName"] == DBNull.Value) ? null : reader["SecondName"].ToString(),
                    LastName = (reader["LastName"] == DBNull.Value) ? null : reader["LastName"].ToString()
                };
            }
            return comrade;
        }

        public Dictionary<int, Demand> MapDemands(IDataReader reader)
        {
            var plan = new Dictionary<int, Demand>();

            while (reader.Read())
            {
                var issue = (int)reader["IssueNumberFrom"];
                var type = (DemandType)reader["Type"];
                var quantity = (int)reader["Quantity"];

                if (!plan.ContainsKey(issue))
                {
                    plan[issue] = new Demand();
                }

                plan[issue][type] = quantity;
            }

            IEnumerable<DemandType> types = (IEnumerable<DemandType>)Enum.GetValues(typeof(DemandType));

            var demands = new Dictionary<int, Demand>();
            var quantities = new Dictionary<DemandType, int>();

            foreach (var type in types)
            {
                quantities[type] = 0;
            }

            for (var issue = plan.Keys.Min(); issue <= Stock.LastIssue.Number; issue++)
            {
                if (plan.ContainsKey(issue))
                {
                    UpdateDemand(plan[issue], quantities,
                        (p, q, t) =>
                        {
                            q[t] = p[t];
                        });
                }

                demands[issue] = new Demand();

                UpdateDemand(demands[issue], quantities,
                    (d, q, t) =>
                    {
                        if (d[t] != q[t])
                        {
                            q[t] = d[t];
                        }
                    });
            }

            return demands;
        }
    }
}
