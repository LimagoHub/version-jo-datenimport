using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblEquityCorporateAction
    {
        public TblEquityCorporateAction()
        {
            TblCashFlow = new HashSet<TblCashFlow>();
        }

        public int CatransactionId { get; set; }
        public int? EqCompositeNo { get; set; }
        public int? StornoTransactionId { get; set; }
        public int Caid { get; set; }
        public string CasubType { get; set; }
        public DateTime AccountingDate { get; set; }
        public DateTime ValueDate { get; set; }
        public string TaxId { get; set; }
        public decimal? CashAmountPerPcs { get; set; }
        public string Isinright { get; set; }
        public decimal? SubscrPrice { get; set; }
        public decimal? AmountRights { get; set; }
        public decimal? AmountEquity { get; set; }
        public string Isinnew { get; set; }
        public decimal? AmountOldInstruments { get; set; }
        public decimal? AmountNewInstruments { get; set; }
        public decimal? CashAmount { get; set; }
        public string Isinadj { get; set; }
        public decimal? AmountAdj { get; set; }
        public decimal? CashAmountTax { get; set; }
        public decimal? TaxBaseAmount { get; set; }
        public string UserDescription { get; set; }
        public int? CaimportId { get; set; }
        public double? CustomFxrate { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblEquityCorporateActionId Ca { get; set; }
        public TblEquityCorporateActionSubType CasubTypeNavigation { get; set; }
        public TblEquityComposite EqCompositeNoNavigation { get; set; }
        public TblEquityInstrument IsinadjNavigation { get; set; }
        public TblEquityInstrument IsinnewNavigation { get; set; }
        public TblEquityInstrument IsinrightNavigation { get; set; }
        public TblEquityTax Tax { get; set; }
        public ICollection<TblCashFlow> TblCashFlow { get; set; }
    }
}