using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblCurrency
    {
        public TblCurrency()
        {
            TblCountry = new HashSet<TblCountry>();
            TblReferenceRateDef = new HashSet<TblReferenceRateDef>();
            TblYieldCurveDef = new HashSet<TblYieldCurveDef>();
        }

        public string Currency { get; set; }
        public string CurrencyName { get; set; }
        public short DecimalPlaces { get; set; }
        public decimal? MinMarketValueInReturnCalc { get; set; }
        public decimal? MaxRoundingError { get; set; }
        public string DefaultYieldCurve { get; set; }
        public string DefaultCalendar { get; set; }
        public string LanguageTag { get; set; }
        public bool? EuroArea { get; set; }
        public int? OrderNo { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCalendar DefaultCalendarNavigation { get; set; }
        public TblYieldCurveDef DefaultYieldCurveNavigation { get; set; }
        public ICollection<TblCountry> TblCountry { get; set; }
        public ICollection<TblReferenceRateDef> TblReferenceRateDef { get; set; }
        public ICollection<TblYieldCurveDef> TblYieldCurveDef { get; set; }
    }
}