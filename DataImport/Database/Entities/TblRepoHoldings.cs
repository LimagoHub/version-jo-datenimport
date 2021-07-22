using System;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblRepoHoldings
    {
        public int HoldingId { get; set; }
        public DateTime FileDate { get; set; }
        public DateTime HoldingDate { get; set; }
        public int PortfolioNo { get; set; }
        public int InstrumentNo { get; set; }
        public int RepoLendNo { get; set; }
        public string DepotNo { get; set; }
        public decimal? AmountTrade { get; set; }
        public decimal? AmountSettled { get; set; }
        public bool? IsLoadedFromFile { get; set; }
        public string Warning { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblInstrument InstrumentNoNavigation { get; set; }
        public TblPortfolio PortfolioNoNavigation { get; set; }
    }
}