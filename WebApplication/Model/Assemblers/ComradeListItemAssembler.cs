using Stock.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication.Model.Assemblers
{
    public class ComradeListItemAssembler : IDtoAssembler<Comrade, ComradeListItem>
    {
        public bool IsEntityValid(Comrade entity)
        {
            return entity.Demands != null;
        }

        public ComradeListItem Assemble(Comrade entity)
        {
            if (entity == null)
            {
                throw new ArgumentNullException("entity");
            }

            if (!IsEntityValid(entity))
            {
                throw new ArgumentException("entity");
            }

            return new ComradeListItem
            {
                Code = entity.Id.ToString().Replace("-", ""),
                FirstName = entity.FirstName,
                LastName = entity.LastName,
                SecondName = entity.SecondName,
                BasicDemand = entity.Demands.Values.Sum(d => d.Basic),
                DistributeDemand = entity.Demands.Values.Sum(d => d.Distributional),
                OptionalDemand = entity.Demands.Values.Sum(d => d.Optional)
            };
        }
    }
}