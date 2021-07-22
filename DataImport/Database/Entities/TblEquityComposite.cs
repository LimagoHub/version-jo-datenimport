using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblEquityComposite
    {
        public TblEquityComposite()
        {
            TblEquityCorporateAction = new HashSet<TblEquityCorporateAction>();
        }

        public int EqCompositeNo { get; set; }
        public string Description { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblEquityCorporateAction> TblEquityCorporateAction { get; set; }
    }
}