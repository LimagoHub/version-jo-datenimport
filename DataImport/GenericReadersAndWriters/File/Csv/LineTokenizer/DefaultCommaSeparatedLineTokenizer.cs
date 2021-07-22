namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer
{
    public class DefaultCommaSeparatedLineTokenizer : ILineTokenizer
    {
        public DefaultCommaSeparatedLineTokenizer(string delimiter = ";")
        {
            Delimiter = delimiter;
        }

        public string Delimiter { get; set; }

        public virtual FieldSet Tokenize(string line)
        {
            return new FieldSet(line.Split(Delimiter));
        }
    }
}