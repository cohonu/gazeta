namespace Stock.Common
{
    using System;
    using System.Runtime.CompilerServices;

    public class Comrade
    {
        public Comrade()
        {
            this.Id = Guid.NewGuid();
        }

        public string FirstName { get; set; }

        public Guid Id { get; set; }

        public string LastName { get; set; }

        public string SecondName { get; set; }
    }
}
