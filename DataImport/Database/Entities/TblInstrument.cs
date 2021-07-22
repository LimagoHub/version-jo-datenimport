using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblInstrument
    {
        public TblInstrument()
        {
            TblPosition = new HashSet<TblPosition>();
            TblRepoHoldings = new HashSet<TblRepoHoldings>();
            TblRepoLend = new HashSet<TblRepoLend>();
        }

        public int InstrumentNo { get; set; }
        public string InstrumentType { get; set; }
        public string Currency { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblBond TblBond { get; set; }
        public TblEquityInstrument TblEquityInstrument { get; set; }
        public TblInstrumentUnknown TblInstrumentUnknown { get; set; }
        public ICollection<TblPosition> TblPosition { get; set; }
        public ICollection<TblRepoHoldings> TblRepoHoldings { get; set; }
        public ICollection<TblRepoLend> TblRepoLend { get; set; }
    }
}