using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;

using BBk.Rc1.Ricis.Database.Entities;
using BBk.Rc1.Ricis.DataImport.Alerts;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.Tests
{
    [TestFixture]
    public class RepoLendConsistencyWithDatabaseCheckServiceTests
    {
        private RepoLendConsistencyWithDatabaseCheckService objectUnderTest;

        private Type entityType;
        private Guid guid0 = Guid.Empty;
        private List<Tuple<TblRepoLend, TblInstrument>> testEntities;
        private TblRepoLend foundEntity;
        private Mock<IRepoLendConsistencyQueries> repoLendConsistencyQueriesMock;
        
        [SetUp]
        public void Setup()
        {
            
            entityType = typeof(TblRepoLend);
            testEntities = new List<Tuple<TblRepoLend, TblInstrument>>();
            testEntities.Add(GenerateTestEntity());
            foundEntity = GenerateFoundEntity();
            repoLendConsistencyQueriesMock = new Mock<IRepoLendConsistencyQueries>(MockBehavior.Strict);
            repoLendConsistencyQueriesMock
                .Setup(x => x.FindByRepoLendNo(It.IsAny<int>())).Returns(foundEntity);
            objectUnderTest = new RepoLendConsistencyWithDatabaseCheckService(repoLendConsistencyQueriesMock.Object);
        }

        private Tuple<TblRepoLend, TblInstrument> GenerateTestEntity()
        {
            return new Tuple<TblRepoLend, TblInstrument>(GenerateFoundEntity(),
                new TblInstrument
                {
                    InstrumentType = "REPO",
                    Currency = "EUR"
                });
        }

        private TblRepoLend GenerateFoundEntity()
        {
            return new TblRepoLend
            {
                RepoLendNo = 336694,
                ExternalKey2 = 336694,
                Counterpart = 103,
                PortfolioNo = 58,
                Calendar = "BBk",
                DayCount = "act/360",
                CalcType = "InterestAtMaturityMM",
                Amount = -1105451.19M,
                Interest = 21.4949M,
                InterestRate = -0.0070000000M,
                TradeDate = new DateTime(2021, 1, 25),
                TradeTime = new DateTime(2021, 1, 25, 15, 24, 0),
                CaptureTime = new DateTime(2021, 1, 25),
                ValueDate = new DateTime(2021, 1, 26),
                MaturityDate = new DateTime(2021, 1, 27),
                Isin = "XS1897340854",
                SecurityInstrumentNo = 91700,
                Nominal = -1000000.00M,
                Price = 106.1290000000M,
                CollateralClass = "PSPP",
                OtherCurrency = null,
                AmountInOtherCurrency = null,
                DealFxrate = null,
                FollowUpTo = null,
                SettleInterest = true,
                Warning = "",
                InitialPortfolioNo = 0
            };
        }

        [Test]
        public void Check_RepoLendNoFoundInTblRepoLend_ReturnsCorrectAlert()
        {
            var alerts = objectUnderTest.Check(testEntities);

            repoLendConsistencyQueriesMock.Verify(x => x.FindByRepoLendNo(336694), Times.Once());
            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(1));
            Assert.That(alerts[0].AlertId, Is.Not.EqualTo(Guid.Empty));
            Assert.That(alerts[0].Level, Is.EqualTo(AlertLevel.Fehler));
            Assert.That(alerts[0].AlertFields.Count, Is.EqualTo(1));
            Assert.That(alerts[0].DtoType, Is.EqualTo(entityType));
            Assert.That(alerts[0].AlertFields[0].DtoGuid, Is.EqualTo(guid0));
            Assert.That(alerts[0].AlertFields[0].PropertyInfo, Is.EqualTo(entityType.GetProperty("RepoLendNo")));
            Assert.That(alerts[0].Message,
                Is.EqualTo("Geschäft mit RepoLendNo 336694 bereits in tblRepoLend vorhanden."));
        }

        [Test]
        public void Check_Storno_ReturnsNoAlert()
        {
            testEntities[0].Item2.InstrumentType = "GLDLS";

            var alerts = objectUnderTest.Check(testEntities);

            repoLendConsistencyQueriesMock.Verify(x => x.FindByRepoLendNo(It.IsAny<int>()), Times.Never());
            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(0));
        }

        [Test]
        public void Check_RepoLendNoNotFoundInTblRepoLend_ReturnsNoAlert()
        {
            repoLendConsistencyQueriesMock
                .Setup(x => x.FindByRepoLendNo(It.IsAny<int>())).Returns((TblRepoLend)null);

            var alerts = objectUnderTest.Check(testEntities);

            repoLendConsistencyQueriesMock.Verify(x => x.FindByRepoLendNo(336694), Times.Once());
            Assert.That(alerts, Is.Not.Null);
            Assert.That(alerts.Count, Is.EqualTo(0));
        }
    }
}
