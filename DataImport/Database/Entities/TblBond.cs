using System;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblBond
    {
        public int InstrumentNo { get; set; }
        public string Name { get; set; }
        public string Cusip { get; set; }
        public string Isin { get; set; }
        public string Calendar { get; set; }
        public string HolidayRule { get; set; }
        public string DayCount { get; set; }
        public string CalcType { get; set; }
        public short CouponFreq { get; set; }
        public decimal? InterestRate { get; set; }
        public DateTime? DatedDate { get; set; }
        public DateTime IssueDate { get; set; }
        public DateTime? FirstCouponDate { get; set; }
        public DateTime? LastCouponDate { get; set; }
        public DateTime MaturityDate { get; set; }
        public decimal? AmountIssued { get; set; }
        public decimal? AmountOutstanding { get; set; }
        public decimal? MinPiece { get; set; }
        public int Issuer { get; set; }
        public string RatingMoody { get; set; }
        public string RatingSp { get; set; }
        public string RatingFitch { get; set; }
        public bool? IsCreatedByProgram { get; set; }
        public string DiscountingYieldCurve { get; set; }
        public string FixingReferenceRate { get; set; }
        public string FixingCalendar { get; set; }
        public short? FixingPeriod { get; set; }
        public string FixingPeriodUnit { get; set; }
        public double? AdditiveMargin { get; set; }
        public double? MultiplicativeMargin { get; set; }
        public double? Floor { get; set; }
        public double? Cap { get; set; }
        public string ReferenceIndexKey { get; set; }
        public string ReferenceIndexSubKey { get; set; }
        public int? IndexationLag { get; set; }
        public bool? DeflationFloor { get; set; }
        public short? ExCouponPeriod { get; set; }
        public string ExCouponPeriodUnit { get; set; }
        public string ExCouponBeginHolidayRule { get; set; }
        public string StripType { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCalcType CalcTypeNavigation { get; set; }
        public TblCalendar CalendarNavigation { get; set; }
        public TblDayCount DayCountNavigation { get; set; }
        public TblYieldCurveDef DiscountingYieldCurveNavigation { get; set; }
        public TblHolidayRule ExCouponBeginHolidayRuleNavigation { get; set; }
        public TblUnitofTime ExCouponPeriodUnitNavigation { get; set; }
        public TblCalendar FixingCalendarNavigation { get; set; }
        public TblUnitofTime FixingPeriodUnitNavigation { get; set; }
        public TblReferenceRateDef FixingReferenceRateNavigation { get; set; }
        public TblHolidayRule HolidayRuleNavigation { get; set; }
        public TblInstrument InstrumentNoNavigation { get; set; }
        public TblIssuer IssuerNavigation { get; set; }
        public TblTimeSeriesDef ReferenceIndex { get; set; }
    }
}