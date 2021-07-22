func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Step.ReadersWritersProcessors.RepoLendCsvFromArchivedFileReader.Read$$() -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :19 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :22 :41) // Not a variable of known type: useCaseRepoLend
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :22 :58) // Not a variable of known type: betrachtungstag
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :22 :18) // new ArchivedFileReader(useCaseRepoLend, betrachtungstag) (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :22 :18) // new ArchivedFileReader(useCaseRepoLend, betrachtungstag).Read() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :22 :18) // new ArchivedFileReader(useCaseRepoLend, betrachtungstag).Read().FileContents (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendCsvReader
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :23 :64) // Not a variable of known type: archivedFileContents
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :23 :19) // RepoLendCsvReader.GetCsvStringReaderInstance(archivedFileContents) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :23 :19) // RepoLendCsvReader.GetCsvStringReaderInstance(archivedFileContents).Read() (InvocationExpression)
return %8 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvFromArchivedFileReader.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
