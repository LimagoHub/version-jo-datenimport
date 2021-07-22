using System.Collections.Generic;
using System.IO;
using System.Linq;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources;

namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv
{
    public abstract class AbstractCsvFileReader<T> : AbstractFileReader<List<T>>
    {
        private StreamReader _reader;

        protected AbstractCsvFileReader(
            IStreamReaderResource resource,
            ILineTokenizer tokenizer,
            bool headlines = false,
            byte skipLines = 0)
            : base(resource)
        {
            Tokenizer = tokenizer;
            Headlines = headlines;
            SkipLines = skipLines;
        }

        public ILineTokenizer Tokenizer { get; set; }
        public bool Headlines { get; }

        public byte SkipLines { get; } // ergänzt
        // noch zu implementieren: Überspringen mehrerer Kopfzeilen (evtl. klarer ohne yield return)

        private string[] Names { get; set; }

        private IEnumerable<T> ReadLines()
        {
            string line;

            line = _reader.ReadLine();
            if (Headlines)
                ReadNames(Tokenizer.Tokenize(line));
            else
                yield return ConversionWrapper(line);

            while ((line = _reader.ReadLine()) != null) yield return ConversionWrapper(line);
        }

        private T ConversionWrapper(string line)
        {
            var fieldSet = Tokenizer.Tokenize(line);
            fieldSet.Names = Names;
            return ConvertFieldSetToObject(fieldSet);
        }

        public override List<T> Read()
        {
            using (_reader = Resource.GetStreamReader())
            {
                return ReadLines().ToList();
            }
        }

        protected abstract T ConvertFieldSetToObject(FieldSet fieldSet);

        private void ReadNames(FieldSet set)
        {
            var names = new List<string>();
            for (var i = 0; i < set.ColumnCount; i++) names.Add(set.ReadString(i));
            Names = names.ToArray();
        }
    }
}