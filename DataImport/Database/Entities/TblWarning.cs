using System;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblWarning
    {
        public int WarningNo { get; set; }
        public DateTime? Date { get; set; }
        public string Module { get; set; }
        public string FunctionSub { get; set; }
        public string UserWarning { get; set; }
        public string Warning { get; set; }
        public byte[] SsmaTimeStamp { get; set; }
    }
}