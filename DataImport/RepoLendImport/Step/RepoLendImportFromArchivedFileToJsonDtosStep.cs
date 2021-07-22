using System;
using System.Collections.Generic;
using BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step;
using BBk.Rc1.Ricis.DataImport.Dtos;
using BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step;
using BBk.Rc1.Ricis.DataImport.RepoLendImport.Step.ReadersWritersProcessors;

namespace BBk.Rc1.Ricis.DataImport.RepoLendImport.Step
{
    /// <summary>
    ///     Step der für den angegebenen Betrachtungstag die Daten aus dem neuesten Archived File die
    ///     zugehörigen JSON Dtos in die Documents Database schreibt.
    /// </summary>
    public class RepoLendImportFromArchivedFileToJsonDtosStep
        : DataImportStep<IList<RepoLendDto>, IList<RepoLendDto>>
    {
        private RepoLendImportFromArchivedFileToJsonDtosStep(string useCaseRepoLend, DateTime betrachtungstag)
            : base(useCaseRepoLend, betrachtungstag)
        {
        }

        public static RepoLendImportFromArchivedFileToJsonDtosStep GetInstance(string useCaseRepoLend,
            DateTime betrachtungstag)
        {
            var step
                = new RepoLendImportFromArchivedFileToJsonDtosStep(useCaseRepoLend, betrachtungstag);
            //Verschachtelung der Inhalte des Archived Files in einen RepoLendCsvReader, 
            //der aus dem String eine Liste von Dtos erzeugt
            //FUNKTIONIERT SO NICHT:
            //CSV-String-Reader kann dynamisch erst nach Lesen des Strings aus Archiv erzeugt werden!
            step.InitReader(new RepoLendCsvFromArchivedFileReader(useCaseRepoLend, betrachtungstag))
                //.InitReader(RepoLendCsvReader.GetCsvStringReaderInstance
                //        (new ArchivedFileReader(useCaseRepoLend, betrachtungstag).Read().FileContents))
                .InitProcessor(new IdentityDataImportProcessor<IList<RepoLendDto>>())
                .InitWriter(new JsonDtosWriter<RepoLendDto>(useCaseRepoLend, betrachtungstag));
            return step;
        }
    }
}