using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Stock.Extensions;

namespace Stock.Common.Tests
{
    public class ComradeBuilder
    {
        private DataTable _comradesDataTable;

        private DataTable _demandsDataTable;

        private static string[] _firstNames = { "Василий", "Игорь", "Вячеслав", "Дмитрий", "Пётр", "Владислав", "Семён" };

        private static string[] _secondNames = { "Васильевич", "Игоревич", "Вячеславович", "Дмитриевич", "Петрович", "Владиславович", "Семёнович" };

        private static string[] _lastNames = { "Сидоров", "Кожухов", "Васильченко", "Глузский", "Новодворский", "Корнилов", "Иванов", "Васильев", "Петров", "Смирнов", "Михайлов", "Фёдоров", "Соколов", "Яковлев", "Попов", "Андреев", "Алексеев", "Александров", "Лебедев", "Григорьев", "Степанов", "Семёнов", "Павлов", "Богданов", "Николаев", "Дмитриев", "Егоров", "Волков", "Кузнецов", "Никитин", "Соловьёв", "Тимофеев", "Орлов", "Афанасьев", "Филиппов", "Сергеев", "Захаров", "Матвеев", "Виноградов", "Кузьмин", "Максимов", "Козлов", "Ильин", "Герасимов", "Марков", "Новиков", "Морозов" };

        public ComradeBuilder()
        {
            _comradesDataTable = new DataTable("Comrade");
            _comradesDataTable.Columns.Add(new DataColumn("Id", typeof(Guid)));
            _comradesDataTable.Columns.Add(new DataColumn("FirstName", typeof(string)));
            _comradesDataTable.Columns.Add(new DataColumn("SecondName", typeof(string)));
            _comradesDataTable.Columns.Add(new DataColumn("LastName", typeof(string)));
            _comradesDataTable.Columns.Add(new DataColumn("Created", typeof(DateTimeOffset)));

            _demandsDataTable = new DataTable("Demand");
            _demandsDataTable.Columns.Add(new DataColumn("Created", typeof(DateTimeOffset)));
            _demandsDataTable.Columns.Add(new DataColumn("Comrade", typeof(Guid)));
            _demandsDataTable.Columns.Add(new DataColumn("IssueNumberFrom", typeof(int)));
            _demandsDataTable.Columns.Add(new DataColumn("Quantity", typeof(int)));
            _demandsDataTable.Columns.Add(new DataColumn("Type", typeof(int)));

        }

        public ComradeBuilder Propagate(int number = 1)
        {
            var random = new Random();
            for (var i = 1; i <= number; i++)
            {
                var id = Guid.NewGuid();
                var created = DateTimeOffset.Now.InMoscow().AddDays(-random.Next(0, 365));
                _comradesDataTable.Rows.Add
                (
                    id,
                    _firstNames[random.Next(_firstNames.Length)],
                    _secondNames[random.Next(_secondNames.Length)],
                    _lastNames[random.Next(_lastNames.Length)],
                    created
                );

                var firstDemandIssue = 79;

                for (var d = 1; d <= 3; d++)
                {
                    _demandsDataTable.Rows.Add
                    (
                        created.AddDays(random.Next(1, 365)),
                        id,
                        firstDemandIssue + (d == 1 ? 0 : random.Next(11)),
                        random.Next(9),
                        random.Next(0, 3)
                    );
                }

            }
            return this;
        }

        public IDataReader CreateDemandsDataReader()
        {
            return _demandsDataTable.CreateDataReader();
        }

        public IDataReader CreateComradesDataReader()
        {
            return _comradesDataTable.CreateDataReader();
        }
    }
}
