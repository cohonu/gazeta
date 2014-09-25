namespace Stock.Common
{
    using System;
    using System.Collections.Generic;
    using System.Runtime.CompilerServices;

    public class Comrade
    {
        public Comrade()
        {
            this.Id = Guid.NewGuid();
        }

        public Guid Id { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string SecondName { get; set; }

        public Dictionary<int, Demand> Demands { get; set; }

        public List<Operation> Incoming { get; set; }

        public List<Operation> Outcoming { get; set; }
    }
}
