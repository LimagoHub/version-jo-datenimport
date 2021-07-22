func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Step.RepoLendImportFromCsvFileToArchivedFileStep.GetInstance$string.System.DateTime.string$(none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :16 :8) {
^entry (%_useCaseRepoLend : none, %_betrachtungstag : none, %_fileName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :16 :78)
cbde.store %_useCaseRepoLend, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :16 :78)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :17 :12)
cbde.store %_betrachtungstag, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :17 :12)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :17 :38)
cbde.store %_fileName, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :17 :38)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :20 :66) // Not a variable of known type: useCaseRepoLend
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :20 :83) // Not a variable of known type: betrachtungstag
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :20 :18) // new RepoLendImportFromCsvFileToArchivedFileStep(useCaseRepoLend, betrachtungstag) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :21 :12) // Not a variable of known type: step
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :22 :57) // Not a variable of known type: useCaseRepoLend
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :22 :74) // Not a variable of known type: betrachtungstag
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :22 :91) // Not a variable of known type: fileName
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :22 :28) // new TextToArchivedFileReader(useCaseRepoLend, betrachtungstag, fileName) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :21 :12) // step                 .InitReader(new TextToArchivedFileReader(useCaseRepoLend, betrachtungstag, fileName)) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :23 :31) // new IdentityDataImportProcessor<ArchivedFile>() (ObjectCreationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :21 :12) // step                 .InitReader(new TextToArchivedFileReader(useCaseRepoLend, betrachtungstag, fileName))                 .InitProcessor(new IdentityDataImportProcessor<ArchivedFile>()) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :24 :28) // new ArchivedFileWriter() (ObjectCreationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :21 :12) // step                 .InitReader(new TextToArchivedFileReader(useCaseRepoLend, betrachtungstag, fileName))                 .InitProcessor(new IdentityDataImportProcessor<ArchivedFile>()) // "leerer" Prozessor                 .InitWriter(new ArchivedFileWriter()) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :25 :19) // Not a variable of known type: step
return %17 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromCsvFileToArchivedFileStep.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
