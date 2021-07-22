using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.Tests.SupportingClasses
{
    public class AbstractCsvFileReaderNamedDummyForTest : AbstractCsvFileReader<DummyPoco>
    {
        public AbstractCsvFileReaderNamedDummyForTest(IStreamReaderResource source, ILineTokenizer tokenizer,
            bool headlines) : base(source, tokenizer, headlines)
        {
        }

        protected override DummyPoco ConvertFieldSetToObject(FieldSet fieldSet)
        {
            return new DummyPoco
            {
                First = fieldSet.ReadString("First"),
                Second = fieldSet.ReadInteger("Second"),
                Third = fieldSet.ReadDateTime("Third")
            };
        }
    }
}