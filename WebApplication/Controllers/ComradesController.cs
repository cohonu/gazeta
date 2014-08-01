namespace WebApplication.Controllers
{
    using Stock.Common;
    using System;
    using System.Collections.Generic;
    using System.Configuration;
    using System.Web.Http;

    public class ComradesController : ApiController
    {
        private static IComradeRepository _comrades;

        public ComradesController()
        {
            _comrades = new ComradeRepository(ConfigurationManager.ConnectionStrings["DevelopConnection"].ConnectionString);
        }

        public ComradesController(IComradeRepository comrades)
        {
            _comrades = comrades ?? new ComradeRepository(null);
        }

        public IEnumerable<Comrade> Get()
        {
            return _comrades.Get();
        }

        public Comrade Get(Guid id)
        {
            return _comrades.Get(id);
        }
    }
}
