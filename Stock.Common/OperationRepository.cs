namespace Stock.Common
{
    using System;
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using System.Runtime.InteropServices;

    public class OperationRepository : IOperationRepository
    {
        private readonly string _connectionString;

        public OperationRepository(string connectionString = null)
        {
            this._connectionString = connectionString ?? "Server=.;Database=gazeta;Trusted_Connection=True;";
        }

        public Operation Add(Operation op)
        {
            if (op == null)
            {
                throw new ArgumentNullException("op");
            }
            using (SqlConnection connection = new SqlConnection(this._connectionString))
            {
                SqlCommand command = new SqlCommand("Operation_Add", connection) {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@Date", op.Date);
                command.Parameters.AddWithValue("@IssueNumber", op.IssueNumber);
                command.Parameters.AddWithValue("@ComradeFrom", op.ComradeFrom);
                command.Parameters.AddWithValue("@ComradeTo", op.ComradeTo);
                command.Parameters.AddWithValue("@Quantity", op.Quantity);
                command.Parameters.AddWithValue("@Comment", op.Comment);
                command.Parameters.Add("@Id", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
                connection.Open();
                command.ExecuteNonQuery();
                op.Id = (int) command.Parameters["@Id"].Value;
                return op;
            }
        }

        public void Delete(int id)
        {
            using (SqlConnection connection = new SqlConnection(this._connectionString))
            {
                SqlCommand command = new SqlCommand("Operation_Delete", connection) {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@Id", id);
                connection.Open();
                command.ExecuteNonQuery();
            }
        }

        public IEnumerable<Operation> Get()
        {
            List<Operation> list = new List<Operation>();
            using (SqlConnection connection = new SqlConnection(this._connectionString))
            {
                Operation operation = null;
                SqlCommand command = new SqlCommand("Operation_Get", connection) {
                    CommandType = CommandType.StoredProcedure
                };
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    operation = Map(reader);
                    if (operation != null)
                    {
                        list.Add(Map(reader));
                    }
                }
            }
            return list;
        }

        public Operation Get(int id)
        {
            using (SqlConnection connection = new SqlConnection(this._connectionString))
            {
                SqlCommand command = new SqlCommand("Operation_Get", connection) {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@Id", id);
                connection.Open();
                return Map(command.ExecuteReader());
            }
        }

        private static Operation Map(IDataReader reader)
        {
            if (reader == null)
            {
                throw new ArgumentNullException("reader");
            }
            Operation operation = null;
            if (reader.Read())
            {
                operation = new Operation {
                    Id = (int) reader["Id"],
                    Date = (DateTimeOffset) reader["Date"],
                    IssueNumber = (int) reader["IssueNumber"],
                    ComradeFrom = Guid.Parse(reader["ComradeFrom"].ToString()),
                    ComradeTo = Guid.Parse(reader["ComradeTo"].ToString()),
                    Quantity = (int) reader["Quantity"],
                    Comment = (reader["Comment"] == DBNull.Value) ? null : reader["Comment"].ToString()
                };
            }
            return operation;
        }
    }
}
