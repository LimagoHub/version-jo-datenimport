using System;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblCashFlow
    {
        public int InstrumentNo { get; set; }
        public DateTime Date { get; set; }
        public int PortfolioNo { get; set; }
        public bool? Settled { get; set; }
        public int CashFlowSupplKey { get; set; }
        public string CashFlowType { get; set; }
        public decimal? CashFlow { get; set; }
        public string Description { get; set; }
        public byte? FilledByKey { get; set; }
        public DateTime? FilledByReferenceDate { get; set; }
        public int? FilledByPortfolioNo { get; set; }
        public int? ExternalKey { get; set; }
        public int? CatransactionId { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCashFlowType CashFlowTypeNavigation { get; set; }
        public TblEquityCorporateAction Catransaction { get; set; }
        public TblFilledBy FilledByKeyNavigation { get; set; }
        public TblPosition TblPosition { get; set; }
    }
}