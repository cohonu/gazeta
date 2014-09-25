namespace WebApplication.Controllers
{
    using Stock.Common;
    using System;
    using System.Linq;
    using System.Collections.Generic;
    using System.Configuration;
    using System.Web.Http;
    using WebApplication.Model;
using WebApplication.Model.Assemblers;

    public class ComradesController : ApiController
    {
        private static IComradeRepository _comrades;
        private static IDtoAssembler<Comrade, ComradeListItem> _comradeListItemAssembler;

        public ComradesController()
        {
            _comrades = new ComradeRepository(ConfigurationManager.ConnectionStrings["DevelopConnection"].ConnectionString);
            _comradeListItemAssembler = new ComradeListItemAssembler();
        }

        public ComradesController(IComradeRepository comrades = null, IDtoAssembler<Comrade, ComradeListItem> comradeListItemAssembler = null)
        {
            _comrades = comrades ?? new ComradeRepository(null);
            _comradeListItemAssembler = comradeListItemAssembler ?? new ComradeListItemAssembler();
        }

        public IEnumerable<ComradeListItem> Get()
        {
            var comrades = (
                from c in _comrades.Get()
                select _comradeListItemAssembler.Assemble(c)
                ).ToList();

            return comrades;
        }

        public Comrade Get(Guid id)
        {
            return _comrades.Get(id);
        }
    }
}
