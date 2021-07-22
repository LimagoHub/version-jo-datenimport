using System;
using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblEquityCorporateActionId
    {
        public TblEquityCorporateActionId()
        {
            TblEquityCorporateAction = new HashSet<TblEquityCorporateAction>();
        }

        public int Caid { get; set; }
        public string Catype { get; set; }
        public DateTime EffektiveDate { get; set; }
        public string Isin { get; set; }
        public string UserDescription { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblEquityCorporateActionType CatypeNavigation { get; set; }
        public TblEquityInstrument IsinNavigation { get; set; }
        public ICollection<TblEquityCorporateAction> TblEquityCorporateAction { get; set; }
    }
}