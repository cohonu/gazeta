namespace WebApplication.Controllers
{
    using Stock.Common;
    using Stock.Extensions;
    using System;
    using System.Collections.Generic;
    using System.Configuration;
    using System.Linq;
    using System.Web.Http;

    public class OperationsController : ApiController
    {
        private readonly IComradeRepository _comrades;
        private readonly IOperationRepository _operations;

        public OperationsController()
        {
            this._operations = new OperationRepository(ConfigurationManager.ConnectionStrings["DevelopConnection"].ConnectionString);
            this._comrades = new ComradeRepository(ConfigurationManager.ConnectionStrings["DevelopConnection"].ConnectionString);
        }

        public OperationsController(IComradeRepository comrades, IOperationRepository operations)
        {
            this._operations = operations ?? new OperationRepository(null);
            this._comrades = comrades ?? new ComradeRepository(null);
        }

        public void Delete(int id)
        {
            this._operations.Delete(id);
        }

        public IEnumerable<OperationGetDto> Get()
        {
            return this.Map(this._operations.Get(), this._comrades.Get());
        }

        public Operation Get(int id)
        {
            return this._operations.Get(id);
        }

        private IEnumerable<OperationGetDto> Map(IEnumerable<Operation> operations, IEnumerable<Comrade> comrades)
        {
            Comrade[] comradesArray = (comrades as Comrade[]) ?? comrades.ToArray<Comrade>();
            return (from o in operations
                select new OperationGetDto { Id = o.Id, Date = o.Date.ToString("dd MMMM (HH:mm)"), From = (from c in comradesArray
                    where c.Id == o.ComradeFrom
                    select c.LastName).FirstOrDefault<string>(), To = (from c in comradesArray
                    where c.Id == o.ComradeTo
                    select c.LastName).FirstOrDefault<string>(), IssueNumber = o.IssueNumber, Quantity = o.Quantity, Comment = o.Comment } into x
                orderby x.IssueNumber descending
                select x);
        }

        public void Post(OperationDto op)
        {
            Operation operation = new Operation {
                Date = DateTimeOffset.Now.InMoscow(),
                ComradeFrom = op.From,
                ComradeTo = op.To,
                Quantity = op.Quantity,
                IssueNumber = op.IssueNumber,
                Comment = op.Comment
            };
            this._operations.Add(operation);
        }
    }
}
