using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblHolidayRule
    {
        public TblHolidayRule()
        {
            TblBondExCouponBeginHolidayRuleNavigation = new HashSet<TblBond>();
            TblBondHolidayRuleNavigation = new HashSet<TblBond>();
        }

        public string HolidayRule { get; set; }
        public string Description { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblBond> TblBondExCouponBeginHolidayRuleNavigation { get; set; }
        public ICollection<TblBond> TblBondHolidayRuleNavigation { get; set; }
    }
}