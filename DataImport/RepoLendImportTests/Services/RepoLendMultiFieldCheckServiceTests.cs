using NUnit.Framework;
using Moq;
using System;
using System.Collections.Generic;

using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.SharedLibraries.InterestCalculation;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.Tests
{
    [TestFixture]
    public class RepoLendMultiFieldCheckServiceTests
    {
        private RepoLendMultiFieldCheckService objectUnderTest;

        private Type dtoType;
        private Guid guid;
        private List<RepoLendDto> testDtos;
        private Mock<IInterestCalculationService> interestCalculationServiceMock;

        [SetUp]
        public void Setup()
        {
            // Tests mittels interestCalculationServiceMock unbedingt unabhängig
            // von InterestCalculationServiceDummy machen!
            // (zur Umsetzung siehe z. B. RepoLendTransformerTests)

            //interestCalculationServiceMock = new Mock<IInterestCalculationService>(MockBehavior.Strict);
            //interestCalculationServiceMock.Setup(x => x.CalcSimpleInterest(It.IsAny<DateTime>(),
            //    It.IsAny<DateTime>(), It.IsAny<decimal>(), It.IsAny<string>())).Returns(0.05M);
            objectUnderTest = new RepoLendMultiFieldCheckService(new InterestCalculationServiceDummy());
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

        public void AssertCorrectConstructionOfOneAlert(IList<DataImportAlert> alerts, AlertLevel level)
        {
            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(1));
            Assert.That(alerts[0].AlertId, Is.Not.EqualTo(Guid.Empty));
            Assert.That(alerts[0].Level, Is.EqualTo(level));
        }

        [Test]
        public void Check_ValutaGleichFaelligkeit_ReturnsCorrectAlert()
        {
            testDtos[0].Lfzv = new DateTime(2021, 2, 3);
            testDtos[0].Zstage = 0;
            testDtos[0].Ab2 = -testDtos[0].Ab1;
            testDtos[0].Zs = 0;

            var alerts = objectUnderTest.Check(testDtos);
            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(2));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzv")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzb")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Der Valutatag liegt nicht vor der Fälligkeit."));
        }

        [Test]
        public void Check_ValutaNachFaelligkeit_ReturnsCorrectAlert()
        {
            testDtos[0].Lfzv = new DateTime(2021, 2, 4);
            testDtos[0].Zstage = -1;
            testDtos[0].Ab2 = -testDtos[0].Ab1;
            testDtos[0].Zs = 0;

            var alerts = objectUnderTest.Check(testDtos);
            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(2));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzv")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzb")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Der Valutatag liegt nicht vor der Fälligkeit."));
        }

        [Test]
        public void Check_StornoLeerUndStatbStorniert_ReturnsCorrectAlert()
        {
            testDtos[0].Storno = "";
            testDtos[0].Statb = "storniert";

            var alerts = objectUnderTest.Check(testDtos);
            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(2));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Storno")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Statb")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Die Kombination aus Storno-Flag und Status ist ungültig."));
        }

        [Test]
        public void Check_Storno1UndStatbFreigegeben_ReturnsCorrectAlert()
        {
            testDtos[0].Storno = "1";
            testDtos[0].Statb = "freigegeben";

            var alerts = objectUnderTest.Check(testDtos);
            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(2));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Storno")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Statb")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Die Kombination aus Storno-Flag und Status ist ungültig."));
        }

        [Test]
        public void Check_LaufzeitUngleichZinstage_ReturnsCorrectAlert()
        {
            testDtos[0].Zstage = 6;

            var alerts = objectUnderTest.Check(testDtos);
            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(3));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[2].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzv")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzb")));
            Assert.That(alerts[0].AlertFields[2].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Zstage")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Die Laufzeit ist nicht gleich der Anzahl der Zinstage."));
        }

        [Test]
        public void Check_SomePropertyCombinationsInvalid_ReturnsCorrectAlerts()
        {
            //RepoArt RPEK
            testDtos[0].Reartbez = "Rev.-Repo PSPP EGB";
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[1].Ab1 = 0;
            testDtos[1].Ab2 = 0.1M;
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[2].Ab2 = 0;
            testDtos[2].Ab1 = -0.1M;
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[3].Nennwert = 0;
            //RepoArt RXVK
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[4].Reart = "RXVK";
            testDtos[4].Snrk = "9000003";
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[5].Reart = "RXVK";
            testDtos[5].Reartbez = "Repo PSPP Eurex";
            testDtos[5].Snrk = "9000003";
            testDtos[5].Ab1 = 0;
            testDtos[5].Ab2 = 0.1M;
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[6].Reart = "RXVK";
            testDtos[6].Reartbez = "Repo PSPP Eurex";
            testDtos[6].Snrk = "9000003";
            testDtos[6].Ab2 = 0;
            testDtos[6].Ab1 = -0.1M;
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[7].Reart = "RXVK";
            testDtos[7].Reartbez = "Repo PSPP Eurex";
            testDtos[7].Snrk = "9000003";
            testDtos[7].Nennwert = 0;
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[8].Reart = "RXVK";
            testDtos[8].Reartbez = "Repo PSPP Eurex";
            //RepoArt RPEV
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[9].Reart = "RPEV";
            testDtos[9].Ab1 = -testDtos[9].Ab1;
            testDtos[9].Ab2 = -testDtos[9].Ab2;
            testDtos[9].Nennwert = -testDtos[9].Nennwert;
            testDtos[9].Intrefrc = "123456789";
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[10].Reart = "RPEV";
            testDtos[10].Reartbez = "Rev.-Repo PSPP EGB";
            testDtos[10].Ab1 = 0;
            testDtos[10].Ab2 = -0.1M;
            testDtos[10].Nennwert = -testDtos[10].Nennwert;
            testDtos[10].Intrefrc = "123456789";
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[11].Reart = "RPEV";
            testDtos[11].Reartbez = "Rev.-Repo PSPP EGB";
            testDtos[11].Ab1 = 0.1M;
            testDtos[11].Ab2 = 0;
            testDtos[11].Nennwert = -testDtos[11].Nennwert;
            testDtos[11].Intrefrc = "123456789";
            testDtos.Add(GenerateTestRepoLendDto());
            testDtos[12].Reart = "RPEV";
            testDtos[12].Reartbez = "Rev.-Repo PSPP EGB";
            testDtos[12].Ab1 = -testDtos[12].Ab1;
            testDtos[12].Ab2 = -testDtos[12].Ab2;
            testDtos[12].Nennwert = 0;
            testDtos[12].Intrefrc = "123456789";

            var alerts = objectUnderTest.Check(testDtos);
            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(13));
            foreach (var item in alerts)
            {
                Assert.That(item.AlertId, Is.Not.EqualTo(Guid.Empty));
                Assert.That(item.Level, Is.EqualTo(AlertLevel.Fehler));
                Assert.That(item.AlertFields.Count, Is.EqualTo(6));
                Assert.That(item.DtoType, Is.EqualTo(dtoType));
                foreach (var field in item.AlertFields)
                {
                    Assert.That(field.DtoGuid, Is.EqualTo(guid));
                }
                Assert.That(item.AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Reart")));
                Assert.That(item.AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Reartbez")));
                Assert.That(item.AlertFields[2].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Ab1")));
                Assert.That(item.AlertFields[3].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Ab2")));
                Assert.That(item.AlertFields[4].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Nennwert")));
                Assert.That(item.AlertFields[5].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Snrk")));
                // Test von alerts[0].Time?
                Assert.That(item.Message, Is.EqualTo("Die Kombination von REART, REARTBEZ, AB1, AB2, NENNWERT und SNRK ist ungültig."));
            }  
        }

        [Test]
        public void Check_ReartIsRpevAndIntrefrcIsEmpty_ReturnsCorrectAlert()
        {
            testDtos[0].Reart = "RPEV";
            testDtos[0].Reartbez = "Rev.-Repo PSPP EGB";
            testDtos[0].Ab1 = -testDtos[0].Ab1;
            testDtos[0].Ab2 = -testDtos[0].Ab2;
            testDtos[0].Nennwert = -testDtos[0].Nennwert;

            var alerts = objectUnderTest.Check(testDtos);
            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Fehler);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(2));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Reart")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Intrefrc")));
            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Die Referenz auf das zugehörige Repo fehlt."));
        }

        [Test]
        public void Check_Ab1AndAb2AndInterestAreNotConsistent_ReturnsCorrectAlert()
        {
            interestCalculationServiceMock = new Mock<IInterestCalculationService>(MockBehavior.Strict);
            interestCalculationServiceMock.Setup(x => x.CalcSimpleInterest(It.IsAny<DateTime>(), It.IsAny<DateTime>(), It.IsAny<decimal>(), It.IsAny<string>())).Returns(10);
            objectUnderTest = new RepoLendMultiFieldCheckService(interestCalculationServiceMock.Object);

            var alerts = objectUnderTest.Check(testDtos);

            interestCalculationServiceMock.Verify(x => x.CalcSimpleInterest(testDtos[0].Lfzv, testDtos[0].Lfzb, testDtos[0].Zs / 100, "act/360"), Times.Once());
            AssertCorrectConstructionOfOneAlert(alerts, AlertLevel.Warnung);
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(5));
            Assert.That(alerts[0].DtoType, Is.EqualTo(dtoType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[1].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[2].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[3].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[4].DtoGuid, Is.EqualTo(guid));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzv")));
            Assert.That(alerts[0].AlertFields[1].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Lfzb")));
            Assert.That(alerts[0].AlertFields[2].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Ab1")));
            Assert.That(alerts[0].AlertFields[3].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Ab2")));
            Assert.That(alerts[0].AlertFields[4].PropertyInfo, Is.EqualTo(dtoType.GetProperty("Zs")));

            // Test von alerts[0].Time?
            Assert.That(alerts[0].Message, Is.EqualTo("Der berechnete Zins enspricht nicht dem sich aus den ausmachenden Beträgen ergebenden Zins."));          
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
