namespace BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer
{
    public interface ILineTokenizer
    {
        FieldSet Tokenize(string line);
    }
}