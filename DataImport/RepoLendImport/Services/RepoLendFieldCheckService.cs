using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.Alerts;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services
{
    public class RepoLendFieldCheckService : AbstractRepoLendChecker
    {
        public RepoLendFieldCheckService(IList<DataImportAlert> alertList, DateTime betrachtungstag) : base(alertList)
        {
            Betrachtungstag = betrachtungstag;
        }

        private DateTime Betrachtungstag { get; }


        protected override void CheckFields()
        {
            CheckErrors();
            CheckWarnings();
            CheckInfos();
        }

        private void CheckInfos()
        {
            Info(!Item.Zsmodb.Contains("act/360")).Message("Die Zinskonvention enthält nicht 'act/360'").Field("Zsmodb")
                .addToAlerts();
        }

        private void CheckWarnings()
        {
            Warning((Betrachtungstag - Item.Datumab).Days > 21)
                .Message("Der Handelstag liegt mehr als 21 Tage in der Vergangenheit.").Field("Datumab").addToAlerts();
            Warning(Item.Marktkurs == 0M).Message("Der Marktkurs ist 0.").Field("Marktkurs").addToAlerts();
        }

        private void CheckErrors()
        {
            // Evtl. zur besseren Lesbarkeit
            var OBSBelegNummerFehlt = Item.Beleg == string.Empty;
            var OBSBelegNummerIsNotNumeric = IsNotInt(Item.Beleg);


            if (!Error(OBSBelegNummerFehlt).Message("OBS-Belegnr. fehlt.").Field("Beleg").addToAlerts())
                Error(OBSBelegNummerIsNotNumeric).Message("OBS-Belegnr. ungültig.").Field("Beleg").addToAlerts();

            Error(Item.Lfzb < Betrachtungstag)
                .Message("Der Fälligkeitstag liegt vor dem Betrachtungstag.")
                .Field("Lfzb")
                .addToAlerts();

            Error(Item.Snr == string.Empty).Message("OBS-Stammnummer fehlt.").Field("Snr").addToAlerts();
            Error(Item.Denr == string.Empty).Message("OBS-Depotnummer fehlt.").Field("Denr").addToAlerts();

            Error(!(Item.Storno == string.Empty || Item.Storno == "1")).Message("Storno-Flag ungültig.").Field("Storno")
                .addToAlerts();
            Error(NotIsIn(Item.Reart, "RPEK", "RPEV", "RXVK")).Message("OBS - Repoart ungültig.").Field("Reart")
                .addToAlerts();

            Error(NotIsIn(Item.Reartbez, "Repo PSPP EGB", "Rev.-Repo PSPP EGB", "Repo PSPP Eurex"))
                .Message("OBS-Repoart-Bezeichnung ungültig.").Field("Reartbez").addToAlerts();

            Error(Item.Wpnr.Length != 12).Message("ISIN des Wertpapiers ungültig.").Field("Wpnr").addToAlerts();

            Error(Item.Snrk == string.Empty).Message("OBS-Stammnr. des Kontrahenten fehlt.").Field("Snrk")
                .addToAlerts();
            Error(Item.Whgu.Length != 3).Message("Währung (ISO 4217) ungültig.").Field("Whgu").addToAlerts();

            Error(NotIsIn(Item.Statb, "freigegeben", "storniert")).Message("Status des Geschäfts ungültig.")
                .Field("Statb")
                .addToAlerts();

            var intrefrc = Item.Intrefrc;
            Error(intrefrc != string.Empty && IsNotInt(intrefrc))
                .Message("OBS-Belegnr. des zugehörigen Geschäfts ungültig.")
                .Field("Intrefrc").addToAlerts();
        }
    }
}