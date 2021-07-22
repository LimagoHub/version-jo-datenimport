using System;
using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer;
using BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step
{
    public class RepoLendCsvReader : AbstractCsvFileReader<RepoLendDto>
    {
        public RepoLendCsvReader(IStreamReaderResource source, ILineTokenizer tokenizer, bool headlines = true) : base(
            source, tokenizer, headlines)
        {
        }

        protected override RepoLendDto ConvertFieldSetToObject(FieldSet fieldSet)
        {
            return new RepoLendDto
            {
                Guid = Guid.NewGuid(),
                Ab2 = fieldSet.ReadDecimal("AB2"),
                Ab1 = fieldSet.ReadDecimal("AB1"),
                Beleg = fieldSet.ReadString("BELEG"),
                Datum = fieldSet.ReadDateTime("DATUM"),
                Datumab = fieldSet.ReadDateTime("DATUMAB"),
                Denr = fieldSet.ReadString("DENR"),
                Intrefrc = fieldSet.ReadString("INTREFRC"),
                Lfzb = fieldSet.ReadDateTime("LFZB"),
                Lfzv = fieldSet.ReadDateTime("LFZV"),
                Marktkurs = fieldSet.ReadDecimal("MARKTKURS"),
                Nennwert = fieldSet.ReadDecimal("NENNWERT"),
                Reart = fieldSet.ReadString("REART"),
                Reartbez = fieldSet.ReadString("REARTBEZ"),
                Snr = fieldSet.ReadString("SNR"),
                Snrbezk = fieldSet.ReadString("SNRBEZK"),
                Snrk = fieldSet.ReadString("SNRK"),
                Statb = fieldSet.ReadString("STATB"),
                Storno = fieldSet.ReadString("STORNO"),
                Whgu = fieldSet.ReadString("WHGU"),
                Wpbezk = fieldSet.ReadString("WPBEZK"),
                Wpnr = fieldSet.ReadString("WPNR"),
                Zeitab = fieldSet.ReadTime("ZEITAB"),
                Zs = fieldSet.ReadDecimal("ZS"),
                Zsmodb = fieldSet.ReadString("ZSMODB"),
                Zstage = fieldSet.ReadInteger("ZSTAGE")
            };
        }

        /// <summary>
        ///     Gibt einen Reader zurück, der aus einem Csv File eine Liste von RepoLendDtos erzeugt.
        /// </summary>
        /// <param name="fileName"></param>
        /// <returns></returns>
        public static RepoLendCsvReader GetCsvFileReaderInstance(string fileName)
        {
            return new RepoLendCsvReader(
                new FileStreamReaderResource(fileName),
                new DefaultCommaSeparatedLineTokenizer());
        }

        /// <summary>
        ///     Gibt einen Reader zurück, der aus einem String eine Liste von RepoLendDtos erzeugt.
        /// </summary>
        /// <param name="source"></param>
        /// <returns></returns>
        public static RepoLendCsvReader GetCsvStringReaderInstance(string source)
        {
            return new RepoLendCsvReader(
                new StringStreamReaderResource(source),
                new DefaultCommaSeparatedLineTokenizer());
        }
    }
}