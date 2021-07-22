using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblDayCount
    {
        public TblDayCount()
        {
            TblBond = new HashSet<TblBond>();
            TblReferenceRateDef = new HashSet<TblReferenceRateDef>();
            TblYieldCurveDef = new HashSet<TblYieldCurveDef>();
        }

        public string DayCount { get; set; }
        public string Description { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblBond> TblBond { get; set; }
        public ICollection<TblReferenceRateDef> TblReferenceRateDef { get; set; }
        public ICollection<TblYieldCurveDef> TblYieldCurveDef { get; set; }
    }
}