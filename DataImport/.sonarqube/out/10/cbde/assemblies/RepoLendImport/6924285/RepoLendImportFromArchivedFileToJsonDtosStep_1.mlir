func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Step.RepoLendImportFromArchivedFileToJsonDtosStep.GetInstance$string.System.DateTime$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :21 :8) {
^entry (%_useCaseRepoLend : none, %_betrachtungstag : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :21 :79)
cbde.store %_useCaseRepoLend, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :21 :79)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :22 :12)
cbde.store %_betrachtungstag, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :22 :12)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :25 :67) // Not a variable of known type: useCaseRepoLend
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :25 :84) // Not a variable of known type: betrachtungstag
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :25 :18) // new RepoLendImportFromArchivedFileToJsonDtosStep(useCaseRepoLend, betrachtungstag) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :30 :12) // Not a variable of known type: step
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :30 :66) // Not a variable of known type: useCaseRepoLend
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :30 :83) // Not a variable of known type: betrachtungstag
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :30 :28) // new RepoLendCsvFromArchivedFileReader(useCaseRepoLend, betrachtungstag) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :30 :12) // step.InitReader(new RepoLendCsvFromArchivedFileReader(useCaseRepoLend, betrachtungstag)) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :33 :31) // new IdentityDataImportProcessor<IList<RepoLendDto>>() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :30 :12) // step.InitReader(new RepoLendCsvFromArchivedFileReader(useCaseRepoLend, betrachtungstag))                 //.InitReader(RepoLendCsvReader.GetCsvStringReaderInstance                 //        (new ArchivedFileReader(useCaseRepoLend, betrachtungstag).Read().FileContents))                 .InitProcessor(new IdentityDataImportProcessor<IList<RepoLendDto>>()) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :34 :60) // Not a variable of known type: useCaseRepoLend
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :34 :77) // Not a variable of known type: betrachtungstag
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :34 :28) // new JsonDtosWriter<RepoLendDto>(useCaseRepoLend, betrachtungstag) (ObjectCreationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :30 :12) // step.InitReader(new RepoLendCsvFromArchivedFileReader(useCaseRepoLend, betrachtungstag))                 //.InitReader(RepoLendCsvReader.GetCsvStringReaderInstance                 //        (new ArchivedFileReader(useCaseRepoLend, betrachtungstag).Read().FileContents))                 .InitProcessor(new IdentityDataImportProcessor<IList<RepoLendDto>>())                 .InitWriter(new JsonDtosWriter<RepoLendDto>(useCaseRepoLend, betrachtungstag)) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :35 :19) // Not a variable of known type: step
return %17 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromArchivedFileToJsonDtosStep.cs" :35 :12)

^1: // ExitBlock
cbde.unreachable

}
