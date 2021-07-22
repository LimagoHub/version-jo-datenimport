using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblCounterpartyType
    {
        public TblCounterpartyType()
        {
            TblCounterpart = new HashSet<TblCounterpart>();
        }

        public int CntprtType { get; set; }
        public string Description { get; set; }
        public string Description1 { get; set; }
        public string Description2 { get; set; }
        public string Description3 { get; set; }
        public int OrderNumber { get; set; }
        public string ExternalKey1 { get; set; }
        public string ExternalKey2 { get; set; }
        public string ExternalKey3 { get; set; }
        public string ExternalKey4 { get; set; }
        public string ExternalKey5 { get; set; }
        public string ExternalKey6 { get; set; }
        public string ExternalKey7 { get; set; }
        public string ExternalKey8 { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblCounterpart> TblCounterpart { get; set; }
    }
}