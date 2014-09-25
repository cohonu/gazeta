using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stock.Extensions
{
    public static class DateTime
    {
        public static DateTimeOffset InMoscow(this DateTimeOffset now)
        {
            return TimeZoneInfo.ConvertTimeBySystemTimeZoneId(DateTimeOffset.Now, "Russian Standard Time");
        }
    }
}
