namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblPortfolioKey
    {
        public int PortfolioNo { get; set; }
        public string PortfolioKey { get; set; }
        public string Value { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblPortfolioKeyType PortfolioKeyNavigation { get; set; }
    }
}