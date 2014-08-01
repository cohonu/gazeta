namespace Stock.Common
{
    using System;
    using System.Runtime.CompilerServices;

    public class Operation
    {
        public string Comment { get; set; }

        public Guid ComradeFrom { get; set; }

        public Guid ComradeTo { get; set; }

        public DateTimeOffset Date { get; set; }

        public int Id { get; set; }

        public int IssueNumber { get; set; }

        public int Quantity { get; set; }
    }
}
