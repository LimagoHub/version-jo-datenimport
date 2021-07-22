using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblPortfolioKeyType
    {
        public TblPortfolioKeyType()
        {
            TblPortfolioKey = new HashSet<TblPortfolioKey>();
        }

        public string PortfolioKey { get; set; }
        public string Description { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblPortfolioKey> TblPortfolioKey { get; set; }
    }
}