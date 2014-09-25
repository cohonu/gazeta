namespace Stock.Common
{
    using System;
    using System.Collections.Generic;

    public interface IComradeRepository
    {
        IEnumerable<Comrade> Get();

        Comrade Get(Guid id);

        Dictionary<int, Demand> GetDemands(Guid comradeId);
    }
}
