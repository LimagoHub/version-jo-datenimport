namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblTransactionCounterpartMapping
    {
        public string SystemId { get; set; }
        public string SystemKey { get; set; }
        public int? RicsCntprtNo { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblCounterpart RicsCntprtNoNavigation { get; set; }
    }
}