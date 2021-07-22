using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblEquityTaxRounding
    {
        public TblEquityTaxRounding()
        {
            TblEquityTaxTaxRefundRoundingMethodNavigation = new HashSet<TblEquityTax>();
            TblEquityTaxTaxRoundingMethodNavigation = new HashSet<TblEquityTax>();
        }

        public string TaxRoundingMethodId { get; set; }
        public string Description { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblEquityTax> TblEquityTaxTaxRefundRoundingMethodNavigation { get; set; }
        public ICollection<TblEquityTax> TblEquityTaxTaxRoundingMethodNavigation { get; set; }
    }
}