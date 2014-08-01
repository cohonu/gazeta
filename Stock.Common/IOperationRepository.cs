namespace Stock.Common
{
    using System;
    using System.Collections.Generic;

    public interface IOperationRepository
    {
        Operation Add(Operation op);
        void Delete(int id);
        IEnumerable<Operation> Get();
        Operation Get(int id);
    }
}
