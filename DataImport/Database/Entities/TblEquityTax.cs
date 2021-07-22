using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblEquityTax
    {
        public TblEquityTax()
        {
            TblEquityCorporateAction = new HashSet<TblEquityCorporateAction>();
        }

        public string TaxId { get; set; }
        public string Description { get; set; }
        public double? TaxRate { get; set; }
        public string TaxRoundingMethod { get; set; }
        public double? TaxRefund { get; set; }
        public string TaxRefundRoundingMethod { get; set; }
        public bool? ShowInList { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblEquityTaxRounding TaxRefundRoundingMethodNavigation { get; set; }
        public TblEquityTaxRounding TaxRoundingMethodNavigation { get; set; }
        public ICollection<TblEquityCorporateAction> TblEquityCorporateAction { get; set; }
    }
}