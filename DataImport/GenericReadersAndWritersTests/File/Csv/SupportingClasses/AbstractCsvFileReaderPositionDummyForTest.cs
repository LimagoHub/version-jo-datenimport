using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.Tests.SupportingClasses
{
    public class AbstractCsvFileReaderPostionDummyForTest : AbstractCsvFileReader<DummyPoco>
    {
        public AbstractCsvFileReaderPostionDummyForTest(IStreamReaderResource source, ILineTokenizer tokenizer,
            bool headlines) : base(source, tokenizer, headlines)
        {
        }

        protected override DummyPoco ConvertFieldSetToObject(FieldSet fieldSet)
        {
            return new DummyPoco
            {
                First = fieldSet.ReadString(0),
                Second = fieldSet.ReadInteger(1),
                Third = fieldSet.ReadDateTime(2)
            };
        }
    }
}