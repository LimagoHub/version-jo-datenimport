using NUnit.Framework;
using System;
using System.Collections.Generic;

using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.Dtos;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.Tests
{
    [TestFixture]
    public class RepoLendFieldCheckServiceTests
    {
        private RepoLendFieldCheckService objectUnderTest;

        private Type dtoType;
        private Guid guid;
        private List<RepoLendDto> testDtos;

        [SetUp]
        public void Setup()
        {
            objectUnderTest = new RepoLendFieldCheckService(new DateTime(2021, 1, 26));
            dtoType = typeof(RepoLendDto);
            guid = new Guid("11223344-5566-7788-99AA-BBCCDDEEFF00");
            testDtos = new List<RepoLendDto>();
            testDtos.Add(GenerateTestRepoLendDto());
        }

        private RepoLendDto GenerateTestRepoLendDto()
        {
            return new RepoLendDto
            {
                Guid = guid,
                Beleg = "0000336705",
                Datumab = new DateTime(2021, 1, 26),
                Zeitab = new TimeSpan(8, 12, 0),
                Datum = new DateTime(2021, 1, 26),
                Lfzv = new DateTime(2021, 1, 27),
                Lfzb = new DateTime(2021, 2, 3),
                Zstage = 7,
                Snr = "1000000",
                Denr = "111",
                Storno = "",
                Reart = "RPEK",
                Reartbez = "Repo PSPP EGB",
                Wpnr = "DE000NRW0LV9",
                Wpbezk = "LAND NRW MTN.LSA R.1484",
                Snrk = "9999999", // geändert
                Snrbezk = "DUMMY KONTRAHENT", // geändert
                Whgu = "EUR",
                Ab1 = -27405664.00M,
                Ab2 = 27401933.78M,
                Zs = -0.700000M,
                Zsmodb = "act/360 (Frz./Euro)",
                Statb = "freigegeben",
                Intrefrc = "",
                Marktkurs = 116.203287670M,
                Nennwert = -22600000.00M
            };
        }

        private void AssertCorrectConstructionOfOneAlert(IList<DataImportAlert> alerts, AlertLevel level)
        {
            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(1));
            Assert.That(alerts[0].AlertId, Is.Not.EqualTo(Guid.Empty));
            Assert.That(alerts[0].Level, Is.EqualTo(level));
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(1));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
        }

        [Test]
        public void Check_BelegIsMissing_ReturnsCorrectAlert()
        {
            testDtos[0].Beleg = "";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Beleg")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("OBS-Belegnr. fehlt."));
        }

        [Test]
        public void Check_BelegIsNotValid_ReturnsCorrectAlert()
        {
            testDtos[0].Beleg = "ABC";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Beleg")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("OBS-Belegnr. ungültig."));
        }

        [Test]
        public void Check_LfzbIsBeforeBetrachtungstag_ReturnsCorrectAlert()
        {
            objectUnderTest = new RepoLendFieldCheckService(new DateTime(2021, 2, 4));

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzb")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Der Fälligkeitstag liegt vor dem Betrachtungstag."));
        }

        [Test]
        public void Check_SnrIsMissing_ReturnsCorrectAlert()
        {
            testDtos[0].Snr = "";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Snr")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("OBS-Stammnummer fehlt."));
        }

        [Test]
        public void Check_DenrIsMissing_ReturnsCorrectAlert()
        {
            testDtos[0].Denr = "";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Denr")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("OBS-Depotnummer fehlt."));
        }

        [Test]
        public void Check_StornoIsNotValid_ReturnsCorrectAlert()
        {
            testDtos[0].Storno = "2";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Storno")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Storno-Flag ungültig."));
        }

        [Test]
        public void Check_ReartIsNotValid_ReturnsCorrectAlert()
        {
            testDtos[0].Reart = "RABC";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Reart")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("OBS-Repoart ungültig."));
        }

        [Test]
        public void Check_ReartbezIsNotValid_ReturnsCorrectAlert()
        {
            testDtos[0].Reartbez = "Repo PSPP ABC";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Reartbez")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("OBS-Repoart-Bezeichnung ungültig."));
        }

        [Test]
        public void Check_WpnrIsNotValid_ReturnsCorrectAlert()
        {
            testDtos[0].Wpnr = "DE000A3H2ZF6XXX";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Wpnr")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("ISIN des Wertpapiers ungültig."));
        }

        [Test]
        public void Check_SnrkIsMissing_ReturnsCorrectAlert()
        {
            testDtos[0].Snrk = "";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Snrk")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("OBS-Stammnr. des Kontrahenten fehlt."));
        }

        [Test]
        public void Check_WhguIsNotValid_ReturnsCorrectAlert()
        {
            testDtos[0].Whgu = "ABCD";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Whgu")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Währung (ISO 4217) ungültig."));
        }

        [Test]
        public void Check_StatbIsNotValid_ReturnsCorrectAlert()
        {
            testDtos[0].Statb = "xyz";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Statb")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Status des Geschäfts ungültig."));
        }

        [Test]
        public void Check_IntrefrcIsNotValid_ReturnsCorrectAlert()
        {
            testDtos[0].Intrefrc = "ABC";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Intrefrc")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("OBS-Belegnr. des zugehörigen Geschäfts ungültig."));
        }

        [Test]
        public void Check_DatumabIsBeforeBetrachtungstagMinus21_ReturnsCorrectAlert()
        {
            testDtos[0].Datumab = new DateTime(2021,1,4);

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Warnung);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Datumab")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Der Handelstag liegt mehr als 21 Tage in der Vergangenheit."));
        }

        [Test]
        public void Check_MarktKursIs0_ReturnsCorrectAlert()
        {
            testDtos[0].Marktkurs = 0M;

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Warnung);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Marktkurs")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Der Marktkurs ist 0."));
        }

        [Test]
        public void Check_UnusualDayCount_ReturnsCorrectAlert()
        {
            testDtos[0].Zsmodb = "act/act";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Info);
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Zsmodb")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Die Zinskonvention enthält nicht 'act/360'"));
        }

        [Test]
        public void Check_TwoPropertiesAreNotValid_ReturnsTwoAlerts()
        {
            testDtos[0].Snrk = "";
            testDtos[0].Whgu = "ABCD";

            var alerts = objectUnderTest.Check(testDtos);

            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(2));
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(1));
            Assert.That(alerts[1].AlertFields.Count, Is.EqualTo(1));
            Assert.That(alerts[0].AlertId, Is.Not.EqualTo(alerts[1].AlertId));
        }

        [Test]
        public void Check_TwoDtosAreNotValid_ReturnsAllAlerts()
        {
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[0].Snrk = "";
            testDtos[1].Whgu = "ABCD";

            var alerts = objectUnderTest.Check(testDtos);

            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(2));
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(1));
            Assert.That(alerts[1].AlertFields.Count, Is.EqualTo(1));
            Assert.That(alerts[0].AlertId, Is.Not.EqualTo(alerts[1].AlertId));
        }

        [Test]
        public void Check_DtosAreValid_ReturnsNoAlerts()
        {
            var alerts = objectUnderTest.Check(testDtos);

            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(0));
        }
    }
}
