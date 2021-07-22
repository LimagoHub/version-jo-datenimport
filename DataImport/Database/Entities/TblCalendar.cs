using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblCalendar
    {
        public TblCalendar()
        {
            TblBondCalendarNavigation = new HashSet<TblBond>();
            TblBondFixingCalendarNavigation = new HashSet<TblBond>();
            TblCurrency = new HashSet<TblCurrency>();
            TblHoliday = new HashSet<TblHoliday>();
            TblReferenceRateDef = new HashSet<TblReferenceRateDef>();
        }

        public string Calendar { get; set; }
        public string Description { get; set; }
        public string ExternalKeyWss { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblBond> TblBondCalendarNavigation { get; set; }
        public ICollection<TblBond> TblBondFixingCalendarNavigation { get; set; }
        public ICollection<TblCurrency> TblCurrency { get; set; }
        public ICollection<TblHoliday> TblHoliday { get; set; }
        public ICollection<TblReferenceRateDef> TblReferenceRateDef { get; set; }
    }
}