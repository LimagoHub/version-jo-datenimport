using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblCalcType
    {
        public TblCalcType()
        {
            TblBond = new HashSet<TblBond>();
            TblYieldCurveDef = new HashSet<TblYieldCurveDef>();
        }

        public string CalcType { get; set; }
        public string Description { get; set; }
        public decimal? ParAmountPerBond { get; set; }
        public string PrimaryRoundingMethod { get; set; }
        public int? PrimaryRoundingPrecision { get; set; }
        public string SecondaryRoundingMethod { get; set; }
        public int? SecondaryRoundingPrecision { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblBond> TblBond { get; set; }
        public ICollection<TblYieldCurveDef> TblYieldCurveDef { get; set; }
    }
}