namespace WebApplication.Controllers
{
    using System;
    using System.Runtime.CompilerServices;

    public class OperationGetDto
    {
        public string Comment { get; set; }

        public string Date { get; set; }

        public string From { get; set; }

        public int Id { get; set; }

        public int IssueNumber { get; set; }

        public int Quantity { get; set; }

        public string To { get; set; }
    }
}
