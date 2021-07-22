using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblEquityCorporateActionType
    {
        public TblEquityCorporateActionType()
        {
            TblEquityCorporateActionId = new HashSet<TblEquityCorporateActionId>();
        }

        public string Catype { get; set; }
        public string Description { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblEquityCorporateActionId> TblEquityCorporateActionId { get; set; }
    }
}