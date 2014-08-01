namespace WebApplication.Controllers
{
    using System;
    using System.Runtime.CompilerServices;

    public class OperationDto
    {
        public string Comment { get; set; }

        public Guid From { get; set; }

        public int IssueNumber { get; set; }

        public int Quantity { get; set; }

        public Guid To { get; set; }
    }
}
