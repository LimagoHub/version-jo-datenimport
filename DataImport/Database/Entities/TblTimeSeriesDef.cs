using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblTimeSeriesDef
    {
        public TblTimeSeriesDef()
        {
            TblBond = new HashSet<TblBond>();
        }

        public string TimeSeriesKey { get; set; }
        public string TimeSeriesSubKey { get; set; }
        public int TimeSeriesId { get; set; }
        public int? OrderNumber { get; set; }
        public bool? ShowInList { get; set; }
        public string Description { get; set; }
        public string Description1 { get; set; }
        public string Description2 { get; set; }
        public string Description3 { get; set; }
        public string Description4 { get; set; }
        public string FormatCode { get; set; }
        public string Level1 { get; set; }
        public string Level2 { get; set; }
        public string Level3 { get; set; }
        public string Level4 { get; set; }
        public string Level3Description1 { get; set; }
        public string TimeSeriesCategory { get; set; }
        public string Comment { get; set; }
        public string Metadata { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblBond> TblBond { get; set; }
    }
}