using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.SharedLibraries.InterestCalculation;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services
{
    public class RepoLendMultiFieldCheckService : AbstractRepoLendChecker
    {
        public RepoLendMultiFieldCheckService(IList<DataImportAlert> alertList,
            IInterestCalculationService interestCalculationService) : base(alertList)
        {
            InterestCalculationService = interestCalculationService;
        }

        private IInterestCalculationService InterestCalculationService { get; }


        protected override void CheckFields()
        {
            Error(Item.Lfzv >= Item.Lfzb)
                .Message("Der Valutatag liegt nicht vor der Fälligkeit.")
                .Field("Lfzb")
                .Field("Lfzv")
                .addToAlerts();

            Error((Item.Lfzb - Item.Lfzv).Days != Item.Zstage)
                .Message("Die Laufzeit ist nicht gleich der Anzahl der Zinstage.")
                .Field("Lfzb")
                .Field("Lfzv")
                .Field("Zstage")
                .addToAlerts();

            Error(IsKombinationOfStornoStatusInvalid())
                .Message("Die Kombination aus Storno-Flag und Status ist ungültig.")
                .Field("Storno")
                .Field("Statb")
                .addToAlerts();

            Error(IsKombinationOfReartReartbezAb1Ab2NennwertSrnkInValid())
                .Message("Die Kombination von REART, REARTBEZ, AB1, AB2, NENNWERT und SNRK ist ungültig.")
                .Field("Reart")
                .Field("Reartbez")
                .Field("Ab1")
                .Field("Ab2")
                .Field("Nennwert")
                .Field("Snrk")
                .addToAlerts();

            Error(Item.Reart == "RPEV" && Item.Intrefrc == "")
                .Message("Die Referenz auf das zugehörige Repo fehlt.")
                .Field("Reart")
                .Field("Intrefrc")
                .addToAlerts();

            Error(BerechneterZinsInvalid())
                .Message("Der berechnete Zins enspricht nicht dem sich aus den ausmachenden Beträgen ergebenden Zins.")
                .Field("Lfzv")
                .Field("Lfzb")
                .Field("Ab1")
                .Field("Ab2")
                .Field("Zs")
                .addToAlerts();
        }

        private bool BerechneterZinsInvalid()
        {
            return Math.Abs(Item.Ab1 +
                            Item.Ab1 * InterestCalculationService.CalcSimpleInterest(Item.Lfzv, Item.Lfzb,
                                Item.Zs / 100, "act/360") + Item.Ab2) > 1;
        }

        private bool IsKombinationOfStornoStatusInvalid()
        {
            return !(Item.Storno == "" && Item.Statb == "freigegeben"
                     || Item.Storno == "1" && Item.Statb == "storniert");
        }

        private bool IsKombinationOfReartReartbezAb1Ab2NennwertSrnkInValid()
        {
            return !(Item.Reart == "RPEK" && Item.Reartbez == "Repo PSPP EGB" && Item.Ab1 < 0 && Item.Ab2 > 0 &&
                     Item.Nennwert < 0
                     || Item.Reart == "RXVK" && Item.Reartbez == "Repo PSPP Eurex" && Item.Ab1 < 0 && Item.Ab2 > 0 &&
                     Item.Nennwert < 0 && Item.Snrk == "9000003"
                     || Item.Reart == "RPEV" && Item.Reartbez == "Rev.-Repo PSPP EGB" && Item.Ab1 > 0 && Item.Ab2 < 0 &&
                     Item.Nennwert > 0);
        }
    }
}