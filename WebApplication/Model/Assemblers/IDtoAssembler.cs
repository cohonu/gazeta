using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication.Model.Assemblers
{
    public interface IDtoAssembler<TIn, TOut>
    {
        TOut Assemble(TIn domainEntity);
    }
}