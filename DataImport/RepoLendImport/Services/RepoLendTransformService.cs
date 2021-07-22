using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.AbstractServices;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries;
using BBk.Rc1.Ricis.SharedLibraries.InterestCalculation;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services
{
    public class
        RepoLendTransformService : ITransformService<IList<RepoLendDto>, IList<Tuple<TblRepoLend, TblInstrument>>>
    {
        public RepoLendTransformService(IInterestCalculationService interestCalculationService,
            IRepoLendTransformQueries repoLendTransformerQueries)
        {
            InterestCalculationService = interestCalculationService;
            RepoLendTransformerQueries = repoLendTransformerQueries;
        }

        private IInterestCalculationService InterestCalculationService { get; }
        private IRepoLendTransformQueries RepoLendTransformerQueries { get; }

        public IList<Tuple<TblRepoLend, TblInstrument>> Transform(IList<RepoLendDto> p)
        {
            var retval = new List<Tuple<TblRepoLend, TblInstrument>>();
            foreach (var item in p)
                retval.Add(new Tuple<TblRepoLend, TblInstrument>(
                    TransformRecordToTblRepoLend(item),
                    TransformRecordToTblInstrument(item)));

            return AdjustPortfolioNos(retval);
        }

        private TblRepoLend TransformRecordToTblRepoLend(RepoLendDto item)
        {
            // Transformierbarkeit von Beleg und Intrefrc wird in RepoLendFieldChecker geprüft.
            var repoLendNo = int.Parse(item.Beleg);
            var externalKey2 = item.Intrefrc == "" ? repoLendNo : int.Parse(item.Intrefrc);
            var counterpart = RepoLendTransformerQueries.GetCounterpartFromMapping(
                RepoLendTransformerQueries.GetFileKey("OBSREPOTRANS", "CounterpartMappingKey"), item.Snrk);
            if (counterpart == null)
                throw new Exception("Kein Kontrahent gefunden.");
            var initialPortfolioNo = RepoLendTransformerQueries.GetPortfolioNoFromKey(
                RepoLendTransformerQueries.GetFileKey("OBSREPOTRANS", "PortfolioMappingKey"), item.Snr + item.Denr);
            if (initialPortfolioNo == null)
                throw new Exception("Kein Portfolio gefunden.");
            var collateralClass = "NONE";
            if (!int.TryParse(
                RepoLendTransformerQueries.GetPropertyValueByCounterparty((int) counterpart, "HasTransferPortfolio"),
                out var portfolioNo))
            {
                portfolioNo = (int) initialPortfolioNo;
                collateralClass = "PSPP";
                initialPortfolioNo = 0;
            }

            var calendar = RepoLendTransformerQueries.GetFileKey("OBSREPOTRANS", "Calendar");
            var securityInstrumentNo =
                item.Ab1 < 0 ? RepoLendTransformerQueries.GetInstrumentNoByIsin(item.Wpnr) : null;

            return new TblRepoLend
            {
                // InstrumentNo: wird im Writer gesetzt (Auto-ID von TblInstrument)
                RepoLendNo = repoLendNo,
                ExternalKey2 = externalKey2,
                // ExternalKey3: wird ignoriert
                Counterpart = counterpart,
                PortfolioNo = portfolioNo,
                Calendar = calendar,
                DayCount = "act/360",
                CalcType = "InterestAtMaturityMM",
                Amount = item.Ab1,
                Interest = item.Ab1 * InterestCalculationService.CalcSimpleInterest(item.Lfzv,
                    item.Lfzb, item.Zs / 100, "act/360"),
                InterestRate = item.Zs / 100,
                TradeDate = item.Datumab,
                TradeTime = item.Datumab + item.Zeitab,
                CaptureTime = item.Datum,
                ValueDate = item.Lfzv,
                MaturityDate = item.Lfzb,
                Isin = item.Wpnr,
                SecurityInstrumentNo = securityInstrumentNo,
                Nominal = item.Nennwert,
                Price = item.Marktkurs,
                CollateralClass = collateralClass,
                OtherCurrency = null,
                AmountInOtherCurrency = null,
                DealFxrate = null,
                FollowUpTo = null,
                SettleInterest = true,
                Warning = "", // PRÜFEN: wird evtl. nicht mehr benötigt wegen DataImportAlert
                // SsmaTimeStamp: wird durch Datenbank gepflegt
                InitialPortfolioNo = initialPortfolioNo
            };
        }

        private TblInstrument TransformRecordToTblInstrument(RepoLendDto item)
        {
            return new TblInstrument
            {
                // InstrumentNo: wird im Writer gesetzt (Auto-ID)
                InstrumentType = item.Storno == "1" ? "GLDLS" : "REPO",
                Currency = item.Whgu
                // SSMA-Timestamp: wird durch Datenbank gepflegt
            };
        }

        // entspricht procAssignRevRepoPortfolio (SQL-Server)
        private List<Tuple<TblRepoLend, TblInstrument>> AdjustPortfolioNos(
            List<Tuple<TblRepoLend, TblInstrument>> tuples)
        {
            foreach (var item in tuples)
                if (item.Item1.RepoLendNo != item.Item1.ExternalKey2 &&
                    item.Item1.PortfolioNo == 58 &&
                    tuples.Find(s => s.Item1.RepoLendNo.Equals(item.Item1.ExternalKey2)).Item1.PortfolioNo == 68)
                    item.Item1.PortfolioNo = 68;
            return tuples;
        }
    }
}