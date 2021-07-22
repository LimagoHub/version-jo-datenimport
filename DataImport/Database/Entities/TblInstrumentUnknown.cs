namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblInstrumentUnknown
    {
        public int InstrumentNo { get; set; }
        public string Isin { get; set; }
        public bool? IsCreatedByProgram { get; set; }
        public string Warning { get; set; }
        public bool? ActiveForRequest { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public TblInstrument InstrumentNoNavigation { get; set; }
    }
}