using System;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblCounterpartyProperty
    {
        public int PropertyId { get; set; }
        public int CntprtNo { get; set; }
        public DateTime Date { get; set; }
        public object Value { get; set; }
        public string Unit { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCounterpart CntprtNoNavigation { get; set; }
    }
}