using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblRepoLend
    {
        public TblRepoLend()
        {
            InverseFollowUpToNavigation = new HashSet<TblRepoLend>();
        }

        public int InstrumentNo { get; set; }
        public int? RepoLendNo { get; set; }
        public int? ExternalKey2 { get; set; }
        public string ExternalKey3 { get; set; }
        public int? Counterpart { get; set; }
        public int? PortfolioNo { get; set; }
        public string Calendar { get; set; }
        public string DayCount { get; set; }
        public string CalcType { get; set; }
        public decimal? Amount { get; set; }
        public decimal? Interest { get; set; }
        public decimal InterestRate { get; set; }
        public DateTime? TradeDate { get; set; }
        public DateTime? TradeTime { get; set; }
        public DateTime? CaptureTime { get; set; }
        public DateTime ValueDate { get; set; }
        public DateTime MaturityDate { get; set; }
        public string Isin { get; set; }
        public int? SecurityInstrumentNo { get; set; }
        public decimal? Nominal { get; set; }
        public decimal? Price { get; set; }
        public string CollateralClass { get; set; }
        public string OtherCurrency { get; set; }
        public decimal? AmountInOtherCurrency { get; set; }
        public decimal? DealFxrate { get; set; }
        public int? FollowUpTo { get; set; }
        public bool? SettleInterest { get; set; }
        public string Warning { get; set; }
        public byte[] SsmaTimeStamp { get; set; }
        public int? InitialPortfolioNo { get; set; }

        public TblRepoLend FollowUpToNavigation { get; set; }
        public TblPortfolio PortfolioNoNavigation { get; set; }
        public TblInstrument SecurityInstrumentNoNavigation { get; set; }
        public ICollection<TblRepoLend> InverseFollowUpToNavigation { get; set; }
    }
}