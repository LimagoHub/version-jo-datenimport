using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblEquityCorporateActionSubType
    {
        public TblEquityCorporateActionSubType()
        {
            TblEquityCorporateAction = new HashSet<TblEquityCorporateAction>();
        }

        public string CasubType { get; set; }
        public string Description { get; set; }
        public string CashFlowType { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCashFlowType CashFlowTypeNavigation { get; set; }
        public ICollection<TblEquityCorporateAction> TblEquityCorporateAction { get; set; }
    }
}