namespace Stock.Common
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Linq;
    using System.Runtime.InteropServices;

    public class ComradeRepository : IComradeRepository
    {
        private readonly string _connectionString;

        public ComradeRepository(string connectionString = null)
        {
            this._connectionString = connectionString ?? "Server=.;Database=gazeta;Trusted_Connection=True;";
        }

        public void Add(Comrade cmrd)
        {
            if (cmrd == null)
            {
                throw new ArgumentNullException("cmrd");
            }
            using (SqlConnection connection = new SqlConnection(this._connectionString))
            {
                SqlCommand command = new SqlCommand("Comrade_Add", connection) {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@Id", cmrd.Id);
                command.Parameters.AddWithValue("@FirstName", cmrd.FirstName);
                command.Parameters.AddWithValue("@SecondName", cmrd.SecondName);
                command.Parameters.AddWithValue("@LastName", cmrd.LastName);
                connection.Open();
                command.ExecuteNonQuery();
            }
        }

        public IEnumerable<Comrade> Get()
        {
            List<Comrade> list = new List<Comrade>();
            using (SqlConnection connection = new SqlConnection(this._connectionString))
            {
                Comrade comrade;
                SqlCommand command = new SqlCommand("Comrade_Get", connection) {
                    CommandType = CommandType.StoredProcedure
                };
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    comrade = Map(reader);
                    if (comrade != null)
                    {
                        list.Add(comrade);
                    }
                }
            }
            return list;
        }

        public Comrade Get(Guid id)
        {
            using (SqlConnection connection = new SqlConnection(this._connectionString))
            {
                SqlCommand command = new SqlCommand("Comrade_Get", connection) {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@Id", id);
                connection.Open();
                return Map(command.ExecuteReader());
            }
        }

        private static Comrade Map(IDataReader reader)
        {
            if (reader == null)
            {
                throw new ArgumentNullException("reader");
            }
            Comrade comrade = null;
            if (reader.Read())
            {
                comrade = new Comrade {
                    Id = (Guid) reader["Id"],
                    FirstName = (reader["FirstName"] == DBNull.Value) ? null : reader["FirstName"].ToString(),
                    SecondName = (reader["SecondName"] == DBNull.Value) ? null : reader["SecondName"].ToString(),
                    LastName = (reader["LastName"] == DBNull.Value) ? null : reader["LastName"].ToString()
                };
            }
            return comrade;
        }

        private static Dictionary<int, int> MapFromIssueDemand(IDataReader reader)
        {
            var result = new Dictionary<int, int>();

            if (reader.Read())
            {
                int issue = 0, q = 0;
                do
                {
                    var next = (int)reader["IssueNumberFrom"];
                    if (++issue == next)
                    {
                        q = (int)reader["Quantity"];
                    }

                    result.Add(issue, q);

                } while (reader.Read());
            }

            return result;
        }

        private static Dictionary<int, int> MapOptionalDemand(IDataReader reader)
        {
            var result = new Dictionary<int, int>();

            if (reader.Read())
            {
                int issue = 0, next = (int)reader["IssueNumber"], q = (int)reader["Quantity"];
                while (issue <= Stock.Issues.Max(i => i.Number))
                {
                    if (++issue == next)
                    {
                        result.Add(issue, q);
                        if (!reader.Read())
                        {
                            break;
                        }
                        next = (int)reader["IssueNumber"];
                        q = (int)reader["Quantity"];
                    }
                    else
                    {
                        result.Add(issue, 0);
                    }
                }
            }

            return result;
        }
    }
}
