using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;

using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries;
using BBk.Rc1.Ricis.SharedLibraries.InterestCalculation;

// Ergänze Fehlerbehandlung für den Fall, dass eine Get-Methode null zurückgibt!

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.Tests
{
    [TestFixture]
    public class RepoLendTransformServiceTests
    {
        private RepoLendTransformService objectUnderTest;

        private List<RepoLendDto> testDtos;

        private Mock<IInterestCalculationService> interestCalculationServiceMock;
        private Mock<IRepoLendTransformQueries> repoLendTransformerQueriesMock;

        [SetUp]
        public void Setup()
        {
            interestCalculationServiceMock = new Mock<IInterestCalculationService>(MockBehavior.Strict);
            interestCalculationServiceMock.Setup(x => x.CalcSimpleInterest(It.IsAny<DateTime>(),
                It.IsAny<DateTime>(), It.IsAny<decimal>(), It.IsAny<string>())).Returns(0.05M);

            repoLendTransformerQueriesMock = new Mock<IRepoLendTransformQueries>(MockBehavior.Strict);
            repoLendTransformerQueriesMock.Setup(x => x.GetFileKey(It.IsAny<string>(), It.IsAny<string>())).Returns("DE");
            repoLendTransformerQueriesMock.Setup(x => x.GetCounterpartFromMapping(It.IsAny<string>(), It.IsAny<string>())).Returns(1);
            repoLendTransformerQueriesMock.Setup(x => x.GetPropertyValueByCounterparty(It.IsAny<int>(), It.IsAny<string>())).Returns("123");
            repoLendTransformerQueriesMock.Setup(x => x.GetPortfolioNoFromKey(It.IsAny<string>(), It.IsAny<string>())).Returns(2);
            repoLendTransformerQueriesMock.Setup(x => x.GetInstrumentNoByIsin(It.IsAny<string>())).Returns(3);

            objectUnderTest = new RepoLendTransformService(interestCalculationServiceMock.Object, repoLendTransformerQueriesMock.Object);

            testDtos = new List<RepoLendDto>();
            testDtos.Add(GenerateTestRepoLendDto());
        }

        private RepoLendDto GenerateTestRepoLendDto()
        {
            return new RepoLendDto
            {
                Guid = new Guid("11223344-5566-7788-99AA-BBCCDDEEFF00"),
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
            retval.Denr = "112";
            retval.Reart = "RPEV";
            retval.Reartbez = "Rev.-Repo PSPP EGB";
            retval.Ab1 = -retval.Ab1;
            retval.Ab2 = -retval.Ab2;
            retval.Nennwert = -retval.Nennwert;
            retval.Intrefrc = retval.Beleg;
            retval.Beleg = "1234567";
            return retval;
        }

        [Test]
        public void Transform_InputDtoWithoutQueries_ReturnsCorrectResult()
        {
            var entityTuples = objectUnderTest.Transform(testDtos);

            Assert.That(entityTuples.Count, Is.EqualTo(1));
            Assert.That(entityTuples[0].Item1.RepoLendNo, Is.EqualTo(336705));
            Assert.That(entityTuples[0].Item1.ExternalKey2, Is.EqualTo(336705));
            Assert.That(entityTuples[0].Item1.DayCount, Is.EqualTo("act/360"));
            Assert.That(entityTuples[0].Item1.CalcType, Is.EqualTo("InterestAtMaturityMM"));
            Assert.That(entityTuples[0].Item1.Amount, Is.EqualTo(-27405664.00M));
            Assert.That(entityTuples[0].Item1.InterestRate, Is.EqualTo(-0.00700000M));
            Assert.That(entityTuples[0].Item1.TradeDate, Is.EqualTo(new DateTime(2021, 1, 26)));
            Assert.That(entityTuples[0].Item1.TradeTime, Is.EqualTo(new DateTime(2021, 1, 26, 8, 12, 0)));
            Assert.That(entityTuples[0].Item1.CaptureTime, Is.EqualTo(new DateTime(2021, 1, 26)));
            Assert.That(entityTuples[0].Item1.ValueDate, Is.EqualTo(new DateTime(2021, 1, 27)));
            Assert.That(entityTuples[0].Item1.MaturityDate, Is.EqualTo(new DateTime(2021, 2, 3)));
            Assert.That(entityTuples[0].Item1.Isin, Is.EqualTo("DE000NRW0LV9"));
            Assert.That(entityTuples[0].Item1.Nominal, Is.EqualTo(-22600000.00M));
            Assert.That(entityTuples[0].Item1.Price, Is.EqualTo(116.203287670M));
            Assert.That(entityTuples[0].Item1.OtherCurrency, Is.EqualTo(null));
            Assert.That(entityTuples[0].Item1.AmountInOtherCurrency, Is.EqualTo(null));
            Assert.That(entityTuples[0].Item1.DealFxrate, Is.EqualTo(null));
            Assert.That(entityTuples[0].Item1.FollowUpTo, Is.EqualTo(null));
            Assert.That(entityTuples[0].Item1.SettleInterest, Is.EqualTo(true));
            Assert.That(entityTuples[0].Item1.Warning, Is.EqualTo(""));
            Assert.That(entityTuples[0].Item2.InstrumentType, Is.EqualTo("REPO"));
            Assert.That(entityTuples[0].Item2.Currency, Is.EqualTo("EUR"));
        }

        [Test]
        public void Transform_InputDtoWithIntrefrcIsNotEmpty_ReturnsCorrectResult()
        {
            testDtos[0].Intrefrc = "000123345";

            var entities = objectUnderTest.Transform(testDtos);

            Assert.That(entities.Count, Is.EqualTo(1));
            Assert.That(entities[0].Item1.ExternalKey2, Is.EqualTo(123345));
        }

        [Test]
        public void Transform_InterestCalculationCallsService_ReturnsCorrectResult()
        {
            var entities = objectUnderTest.Transform(testDtos);

            interestCalculationServiceMock.Verify(x => x.CalcSimpleInterest(testDtos[0].Lfzv,
                testDtos[0].Lfzb, testDtos[0].Zs / 100, "act/360"), Times.Once());
            Assert.That(entities[0].Item1.Interest, Is.EqualTo(-27405664.00M * 0.05M));
        }

        [Test]
        public void Transform_InputDtoWithQueries_ReturnsCorrectResult()
        {
            var entityTuples = objectUnderTest.Transform(testDtos);

            repoLendTransformerQueriesMock.Verify(x => x.GetFileKey("OBSREPOTRANS", "CounterpartMappingKey"), Times.Once());
            repoLendTransformerQueriesMock.Verify(x => x.GetCounterpartFromMapping("DE", "9999999"), Times.Once());
            repoLendTransformerQueriesMock.Verify(x => x.GetPropertyValueByCounterparty(1, "HasTransferPortfolio"), Times.Once());
            repoLendTransformerQueriesMock.Verify(x => x.GetFileKey("OBSREPOTRANS", "Calendar"), Times.Once());
            repoLendTransformerQueriesMock.Verify(x => x.GetInstrumentNoByIsin("DE000NRW0LV9"), Times.Once());
            repoLendTransformerQueriesMock.Verify(x => x.GetPortfolioNoFromKey("DE", "1000000111"), Times.Once());

            Assert.That(entityTuples.Count, Is.EqualTo(1));
            Assert.That(entityTuples[0].Item1.Counterpart, Is.EqualTo(1));
            Assert.That(entityTuples[0].Item1.PortfolioNo, Is.EqualTo(123));
            Assert.That(entityTuples[0].Item1.Calendar, Is.EqualTo("DE"));
            Assert.That(entityTuples[0].Item1.SecurityInstrumentNo, Is.EqualTo(3));
            Assert.That(entityTuples[0].Item1.CollateralClass, Is.EqualTo("NONE"));
            Assert.That(entityTuples[0].Item1.InitialPortfolioNo, Is.EqualTo(2));
        }

        [Test]
        public void Transform_InputDtoWithGetPropertyValueByCounterpartyReturnsEmpty_ReturnsCorrectResult()
        {
            repoLendTransformerQueriesMock.Setup(x => x.GetPropertyValueByCounterparty(It.IsAny<int>(), It.IsAny<string>())).Returns("");

            var entityTuples = objectUnderTest.Transform(testDtos);

            repoLendTransformerQueriesMock.Verify(x => x.GetPropertyValueByCounterparty(1, "HasTransferPortfolio"), Times.Once());
            repoLendTransformerQueriesMock.Verify(x => x.GetFileKey("OBSREPOTRANS", "PortfolioMappingKey"), Times.Once());
            repoLendTransformerQueriesMock.Verify(x => x.GetPortfolioNoFromKey("DE", "1000000111"), Times.Once());
            Assert.That(entityTuples[0].Item1.PortfolioNo, Is.EqualTo(2));
            Assert.That(entityTuples[0].Item1.CollateralClass, Is.EqualTo("PSPP"));
            Assert.That(entityTuples[0].Item1.InitialPortfolioNo, Is.EqualTo(0));
        }

        [Test]
        public void Transform_InputDtoAb1IsPositive_ReturnsCorrectResult()
        {
            testDtos[0].Ab1 = 1000M;
 
            var entityTuples = objectUnderTest.Transform(testDtos);

            Assert.That(entityTuples[0].Item1.SecurityInstrumentNo, Is.EqualTo(null));
        }

        [Test]
        public void Transform_InputDtoStornoIs1_ReturnsInstrumentTypeGLDLS()
        {
            testDtos[0].Storno = "1";

            var entityTuples = objectUnderTest.Transform(testDtos);

            Assert.That(entityTuples[0].Item2.InstrumentType, Is.EqualTo("GLDLS"));
        }

        [Test]
        public void Transform_ReturnsEqualPortfolioNosForRelatedTrades()
        {
            testDtos.Add(GenerateTestReverseRepoLendDto());
            repoLendTransformerQueriesMock.Setup(x => x.GetPropertyValueByCounterparty(It.IsAny<int>(), 
                It.IsAny<string>())).Returns("");
            repoLendTransformerQueriesMock.Setup(x => x.GetPortfolioNoFromKey(It.IsAny<string>(), 
                "1000000111")).Returns(68);
            repoLendTransformerQueriesMock.Setup(x => x.GetPortfolioNoFromKey(It.IsAny<string>(), 
                "1000000112")).Returns(58);

            var entityTuples = objectUnderTest.Transform(testDtos);

            Assert.That(entityTuples[0].Item1.PortfolioNo, Is.EqualTo(68));
            Assert.That(entityTuples[1].Item1.PortfolioNo, Is.EqualTo(68));
        }
    }
}
