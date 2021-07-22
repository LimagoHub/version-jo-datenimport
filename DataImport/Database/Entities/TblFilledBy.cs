using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblFilledBy
    {
        public TblFilledBy()
        {
            TblCashFlow = new HashSet<TblCashFlow>();
        }

        public byte FilledByKey { get; set; }
        public string Value { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblCashFlow> TblCashFlow { get; set; }
    }
}