using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblYieldCurveDef
    {
        public TblYieldCurveDef()
        {
            TblBond = new HashSet<TblBond>();
            TblCurrency = new HashSet<TblCurrency>();
        }

        public string YieldCurve { get; set; }
        public string Currency { get; set; }
        public string DayCount { get; set; }
        public string CalcType { get; set; }
        public short CouponFreq { get; set; }
        public string Description { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCalcType CalcTypeNavigation { get; set; }
        public TblCurrency CurrencyNavigation { get; set; }
        public TblDayCount DayCountNavigation { get; set; }
        public ICollection<TblBond> TblBond { get; set; }
        public ICollection<TblCurrency> TblCurrency { get; set; }
    }
}