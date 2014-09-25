using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Stock.Common;
using NUnit.Framework;
using System.Data;

namespace Stock.Common.Tests
{
    [TestFixture]
    public class ComradeRepositoryTests
    {

        private static readonly string _testConnectionString = "Server=119.9.76.133;Database=gazeta;User Id=sa;Password=16tYoca7A6AUSw6YE29LO8A+O;";

        [Test]
        public void GetByIdTest()
        {
            var testId = Guid.Parse("3EDF5DCF-8449-4883-B98D-10BA93B93423");

            var repo = new ComradeRepository(_testConnectionString);

            var comrade = repo.Get(testId);

            Assert.NotNull(comrade, "Cannot create Comrade object. Comrade is null!");
            Assert.NotNull(comrade.Demands, "Cannot create Demands object. Comrade.Demands is null!");
        }
    }
}
