using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblReferenceRateDef
    {
        public TblReferenceRateDef()
        {
            InverseParentReferenceRateNavigation = new HashSet<TblReferenceRateDef>();
            TblBond = new HashSet<TblBond>();
        }

        public string ReferenceRate { get; set; }
        public string BloombergKey { get; set; }
        public string BloombergKeySec { get; set; }
        public string BloombergField { get; set; }
        public string BloombergFieldSec { get; set; }
        public string BloombergDate { get; set; }
        public short? BloombergPublicationLag { get; set; }
        public string Currency { get; set; }
        public string DayCount { get; set; }
        public bool? ZeroRate { get; set; }
        public bool? DiscountRate { get; set; }
        public short CouponFreq { get; set; }
        public int? TimeToMaturity { get; set; }
        public string UnitOfTime { get; set; }
        public string Calendar { get; set; }
        public string ParentReferenceRate { get; set; }
        public double? SpreadToParent { get; set; }
        public double? MaxAbsParentRate { get; set; }
        public double? MinAbsParentRate { get; set; }
        public decimal? MaxAbsNominal { get; set; }
        public decimal? MinAbsNominal { get; set; }
        public string Description { get; set; }
        public string Metadata { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCalendar CalendarNavigation { get; set; }
        public TblCurrency CurrencyNavigation { get; set; }
        public TblDayCount DayCountNavigation { get; set; }
        public TblReferenceRateDef ParentReferenceRateNavigation { get; set; }
        public TblUnitofTime UnitOfTimeNavigation { get; set; }
        public ICollection<TblReferenceRateDef> InverseParentReferenceRateNavigation { get; set; }
        public ICollection<TblBond> TblBond { get; set; }
    }
}