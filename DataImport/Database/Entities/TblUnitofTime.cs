using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblUnitofTime
    {
        public TblUnitofTime()
        {
            TblBondExCouponPeriodUnitNavigation = new HashSet<TblBond>();
            TblBondFixingPeriodUnitNavigation = new HashSet<TblBond>();
            TblReferenceRateDef = new HashSet<TblReferenceRateDef>();
        }

        public string UnitOfTime { get; set; }
        public string Description { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblBond> TblBondExCouponPeriodUnitNavigation { get; set; }
        public ICollection<TblBond> TblBondFixingPeriodUnitNavigation { get; set; }
        public ICollection<TblReferenceRateDef> TblReferenceRateDef { get; set; }
    }
}