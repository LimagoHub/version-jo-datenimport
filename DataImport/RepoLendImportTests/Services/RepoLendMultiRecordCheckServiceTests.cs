using NUnit.Framework;
using System;
using System.Collections.Generic;

using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.Dtos;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.Tests
{
    [TestFixture]
    public class RepoLendMultiRecordCheckServiceTests
    {
        private RepoLendMultiRecordCheckService objectUnderTest;

        private Type dtoType;
        private Guid guid;
        private List<RepoLendDto> testDtos;

        [SetUp]
        public void Setup()
        {
            objectUnderTest = new RepoLendMultiRecordCheckService();
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
        private RepoLendDto GenerateTestReverseRepoLendDto()
        {
            RepoLendDto retval = GenerateTestRepoLendDto();
            retval.Guid = new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01");
            retval.Reart = "RPEV";
            retval.Reartbez = "Rev.-Repo PSPP EGB";
            retval.Ab1 = -retval.Ab1;
            retval.Ab2 = -retval.Ab2;
            retval.Nennwert = -retval.Nennwert;
            retval.Intrefrc = retval.Beleg;
            retval.Beleg = "1234567";
            return retval;
        }

        public void AssertCorrectConstructionOfOneAlert(IList<DataImportAlert> alerts, AlertLevel level)
        {
            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(1));
            Assert.That(alerts[0].AlertId, Is.Not.EqualTo(Guid.Empty));
            Assert.That(alerts[0].Level, Is.EqualTo(level));
        }

        [Test]
        public void Check_BelegIsDuplicate_ReturnsCorrectAlert()
        {
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[1].Guid = new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01");
            testDtos[1].Beleg = testDtos[0].Beleg;

            var alerts = objectUnderTest.Check(testDtos);

            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(2));
            Assert.That(alerts[0].AlertId, Is.Not.EqualTo(Guid.Empty));
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(2));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Beleg")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Beleg")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Die OBS-Belegnr. ist mehrfach vorhanden."));
            Assert.That(alerts[1].AlertId, Is.Not.EqualTo(Guid.Empty));
            Assert.That(alerts[1].AlertFields.Count, Is.EqualTo(2));
            Assert.That(alerts[1].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[1].AlertFields[0].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[1].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[1].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Beleg")));
            Assert.That(alerts[1].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Beleg")));
            // Test von alerts[1].Time?
            Assert.That(alerts[1].Message, Is.EqualTo("Die OBS-Belegnr. ist mehrfach vorhanden."));
        }

        [Test]
        public void Check_ReartIsRpevAndIntrefrcNotFoundInBeleg_ReturnsCorrectAlert()
        {
            testDtos[0].Beleg = "0101";
            testDtos[0].Reart = "RPEV";
            testDtos[0].Reartbez = "Rev.-Repo PSPP EGB";
            testDtos[0].Ab1 = -testDtos[0].Ab1;
            testDtos[0].Ab2 = -testDtos[0].Ab2;
            testDtos[0].Nennwert = -testDtos[0].Nennwert;
            testDtos[0].Intrefrc = "12345";
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[1].Guid = new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01");
            testDtos.Add(GenerateTestReverseRepoLendDto());
            testDtos[2].Guid = new Guid("11223344-5566-7788-99AA-BBCCDDEEFF02");

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(2));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Reart")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Intrefrc")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Das zugehörige Repo fehlt."));
        }

        [Test]
        public void Check_ReartIsRpevAndIntrefrcWithWrongReart_ReturnsCorrectAlert()
        {
            testDtos[0].Beleg = "123456789";
            testDtos[0].Reart = "RXVK";
            testDtos[0].Reartbez = "Repo PSPP Eurex";
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[1].Guid = new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01");
            testDtos[1].Reart = "RPEV";
            testDtos[1].Reartbez = "Rev.-Repo PSPP EGB";
            testDtos[1].Ab1 = -testDtos[1].Ab1;
            testDtos[1].Ab2 = -testDtos[1].Ab2;
            testDtos[1].Nennwert = -testDtos[1].Nennwert;
            testDtos[1].Intrefrc = "123456789";
   
            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(3));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[2].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Beleg")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Reart")));
            Assert.That(alerts[0].AlertFields[2].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Intrefrc")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Das Geschäft ist vom Typ 'Repo PSPP Eurex', hat aber ein Gegengeschäft."));
        }

        [Test]
        public void Check_ReartIsRpevAndIntrefrcWithDifferentDatumab_ReturnsCorrectAlert()
        {
            testDtos.Add(GenerateTestReverseRepoLendDto());
            testDtos[1].Datumab = new DateTime(2021, 1, 27);

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(3));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[2].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Datumab")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Intrefrc")));
            Assert.That(alerts[0].AlertFields[2].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Datumab")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Das zugehörige Geschäft hat einen anderen Handelstag."));
        }

        [Test]
        public void Check_ReartIsRpevAndIntrefrcWithDifferentLfzv_ReturnsCorrectAlert()
        {
            testDtos.Add(GenerateTestReverseRepoLendDto());
            testDtos[1].Lfzv = new DateTime(2021, 1, 28);

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(3));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[2].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzv")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Intrefrc")));
            Assert.That(alerts[0].AlertFields[2].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzv")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Das zugehörige Geschäft hat einen anderen Valutatag."));
        }

        [Test]
        public void Check_ReartIsRpevAndIntrefrcWithDifferentLfzb_ReturnsCorrectAlert()
        {
            testDtos.Add(GenerateTestReverseRepoLendDto());
            testDtos[1].Lfzb = new DateTime(2021, 2, 4);

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(3));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[2].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzb")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Intrefrc")));
            Assert.That(alerts[0].AlertFields[2].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzb")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Das zugehörige Geschäft hat einen anderen Fälligkeitstag."));
        }

        [Test]
        public void Check_ReartIsRpevAndIntrefrcWithDifferentSnrk_ReturnsCorrectAlert()
        {
            testDtos.Add(GenerateTestReverseRepoLendDto());
            testDtos[1].Snrk = "1234567";

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(3));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[2].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Snrk")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Intrefrc")));
            Assert.That(alerts[0].AlertFields[2].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Snrk")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Das zugehörige Geschäft hat eine andere OBS-Stammnr. des Kontrahenten."));
        }

        [Test]
        public void Check_ReartIsRpekAndAb1IsNotSumOfAb1OfRpevs_ReturnsCorrectAlert()
        {
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[1].Guid = new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01");
            testDtos[1].Beleg = "0101";
            testDtos[1].Reart = "RPEV";
            testDtos[1].Reartbez = "Rev.-Repo PSPP EGB";
            testDtos[1].Intrefrc = "0000336705";
            testDtos[1].Ab1 = -testDtos[0].Ab1;
            testDtos[1].Ab2 = -testDtos[0].Ab2;
            testDtos[1].Nennwert = -testDtos[0].Nennwert;
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[2].Guid = new Guid("11223344-5566-7788-99AA-BBCCDDEEFF02");
            testDtos[2].Beleg = "0102";
            testDtos[2].Reart = "RPEV";
            testDtos[2].Reartbez = "Rev.-Repo PSPP EGB";
            testDtos[2].Intrefrc = "0000336705";
            testDtos[2].Ab1 = -testDtos[0].Ab1;
            testDtos[2].Ab2 = -testDtos[0].Ab2;
            testDtos[2].Nennwert = -testDtos[0].Nennwert;

            var alerts = objectUnderTest.Check(testDtos);

            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(5));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[2].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[3].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF01")));
            Assert.That(alerts[0].AlertFields[4].DtoGuid, Is.EqualTo(new Guid("11223344-5566-7788-99AA-BBCCDDEEFF02")));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Beleg")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Reart")));
            Assert.That(alerts[0].AlertFields[2].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Ab1")));
            Assert.That(alerts[0].AlertFields[3].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Ab1")));
            Assert.That(alerts[0].AlertFields[4].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Ab1")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Der ausmachende Betrag des Repos entspricht nicht der Summe der ausmachenden Beträge der zugehörigen Reverse Repos."));
        }

        [Test]
        public void Check_DtosAreValid_ReturnsNoAlerts()
        {
            testDtos.Add(GenerateTestReverseRepoLendDto());

            var alerts = objectUnderTest.Check(testDtos);
            
            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(0));
        }
    }
}
