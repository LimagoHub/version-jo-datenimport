using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblCashFlowType
    {
        public TblCashFlowType()
        {
            TblCashFlow = new HashSet<TblCashFlow>();
            TblEquityCorporateActionSubType = new HashSet<TblEquityCorporateActionSubType>();
        }

        public string CashFlowType { get; set; }
        public int OrderNumber { get; set; }
        public string Description { get; set; }
        public string Description1 { get; set; }
        public string Description2 { get; set; }
        public string Description3 { get; set; }
        public string DescriptionEng { get; set; }
        public string Description1Eng { get; set; }
        public string Description2Eng { get; set; }
        public string Description3Eng { get; set; }

        public ICollection<TblCashFlow> TblCashFlow { get; set; }
        public ICollection<TblEquityCorporateActionSubType> TblEquityCorporateActionSubType { get; set; }
    }
}