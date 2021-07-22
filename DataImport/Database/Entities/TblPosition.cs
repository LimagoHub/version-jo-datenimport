using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblPosition
    {
        public TblPosition()
        {
            TblCashFlow = new HashSet<TblCashFlow>();
        }

        public int InstrumentNo { get; set; }
        public DateTime Date { get; set; }
        public int PortfolioNo { get; set; }
        public bool Settled { get; set; }
        public decimal? Amount { get; set; }
        public decimal? MarketValue { get; set; }
        public decimal? CashFlow { get; set; }
        public decimal? CleanMarketValue { get; set; }
        public decimal? MarketValueTradeDate { get; set; }
        public decimal? CashFlowTradeDate { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblInstrument InstrumentNoNavigation { get; set; }
        public ICollection<TblCashFlow> TblCashFlow { get; set; }
    }
}