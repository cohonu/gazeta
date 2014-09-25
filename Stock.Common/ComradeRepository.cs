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

        private IComradeMapper _mapper;

        public ComradeRepository(string connectionString = null, IComradeMapper mapper = null)
        {
            _connectionString = connectionString ?? "Server=.;Database=gazeta;Trusted_Connection=True;";

            _mapper = mapper ?? new ComradeMapper();
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
                    comrade = _mapper.Map(reader);
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
            Comrade comrade = null;

            using (SqlConnection connection = new SqlConnection(this._connectionString))
            {
                SqlCommand command = new SqlCommand("Comrade_Get", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@Id", id);
                connection.Open();
                comrade = _mapper.Map(command.ExecuteReader());
            }

            comrade.Demands = GetDemands(comrade.Id);

            return comrade;
        }

        public Dictionary<int, Demand> GetDemands(Guid comradeId)
        {
            using (SqlConnection conn = new SqlConnection(this._connectionString))
            {
                SqlCommand command = new SqlCommand("Demand_Get", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };
                command.Parameters.AddWithValue("@Comrade", comradeId);
                conn.Open();

                return _mapper.MapDemands(command.ExecuteReader());
            }
        }
    }
}
