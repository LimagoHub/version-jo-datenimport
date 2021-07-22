using System.Collections.Generic;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.Tests.SupportingClasses;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources;
using NUnit.Framework;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.Tests
{
    public class AbstractCsvFileReaderTests
    {
        private ILineTokenizer _lineTokenizer;
        private AbstractCsvFileReader<DummyPoco> _objectUnderTest;

        [SetUp]
        public void setUp()
        {
            _lineTokenizer = new DefaultCommaSeparatedLineTokenizer(",");
        }

        [Test]
        public void Read_NoHeadlines_Success()
        {
            IStreamReaderResource stream = new StringStreamReaderResource("Hallo,1,20200516\nWelt,2,20200517");
            _objectUnderTest = new AbstractCsvFileReaderPostionDummyForTest(stream, _lineTokenizer, false);

            IList<DummyPoco> pocos = _objectUnderTest.Read();

            Assert.That(pocos.Count, Is.EqualTo(2));
        }

        [Test]
        public void Read_WithHeadlines_Success()
        {
            IStreamReaderResource stream =
                new StringStreamReaderResource("First,Second,Third\nHallo,1,20200516\nWelt,2,20200517");
            _objectUnderTest = new AbstractCsvFileReaderNamedDummyForTest(stream, _lineTokenizer, true);

            IList<DummyPoco> pocos = _objectUnderTest.Read();

            Assert.That(pocos.Count, Is.EqualTo(2));
        }
    }
}