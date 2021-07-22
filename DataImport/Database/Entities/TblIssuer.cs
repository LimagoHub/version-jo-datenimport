using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblIssuer
    {
        public TblIssuer()
        {
            TblBond = new HashSet<TblBond>();
        }

        public int CntprtNo { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCounterpart CntprtNoNavigation { get; set; }
        public ICollection<TblBond> TblBond { get; set; }
    }
}