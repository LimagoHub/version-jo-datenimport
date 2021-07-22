using System;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblHoliday
    {
        public string Calendar { get; set; }
        public DateTime Date { get; set; }
        public string Description { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCalendar CalendarNavigation { get; set; }
    }
}