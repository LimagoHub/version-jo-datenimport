using System.Collections.Generic;

namespace BBk.Rc1.Ricis.Database.Entities
{
    public class TblPortfolio
    {
        public TblPortfolio()
        {
            TblRepoHoldings = new HashSet<TblRepoHoldings>();
            TblRepoLend = new HashSet<TblRepoLend>();
        }

        public int PortfolioNo { get; set; }
        public string PortfolioName { get; set; }
        public string Sector { get; set; }
        public string Description { get; set; }
        public string Description1 { get; set; }
        public string Description2 { get; set; }
        public string Description3 { get; set; }
        public int? CounterPortfolioNo { get; set; }
        public int? InstrumentNoForCalc { get; set; }
        public bool? AktienPortfolio { get; set; }
        public bool? DerivativePortfolio { get; set; }
        public bool? OtherPortfolio { get; set; }
        public bool? LoadHoldings { get; set; }
        public bool? LoadTransactions { get; set; }
        public bool? GenerateCorporateActions { get; set; }
        public bool? CmpHoldingsTransactions { get; set; }
        public bool? LoadPrices { get; set; }
        public bool? CalcPortfolio { get; set; }
        public bool? CalcAmort { get; set; }
        public bool? CalcCash { get; set; }
        public bool? CheckConsitency { get; set; }
        public bool? StdLoadHoldings { get; set; }
        public bool? StdLoadTransactions { get; set; }
        public bool? StdGenerateCorporateActions { get; set; }
        public bool? StdCmpHoldingsTransactions { get; set; }
        public bool? StdLoadPrices { get; set; }
        public bool? StdCalcPortfolio { get; set; }
        public bool? StdCalcAmort { get; set; }
        public bool? StdCalcCash { get; set; }
        public bool? StdCheckConsitency { get; set; }
        public byte[] SsmaTimeStamp { get; set; }

        public ICollection<TblRepoHoldings> TblRepoHoldings { get; set; }
        public ICollection<TblRepoLend> TblRepoLend { get; set; }
    }
}