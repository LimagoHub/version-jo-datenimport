func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Step.RepoLendImportFromJsonEntitiesToRicisDatabaseStep.GetInstance$string.System.DateTime$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :16 :8) {
^entry (%_useCaseRepoLend : none, %_betrachtungstag : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :16 :84)
cbde.store %_useCaseRepoLend, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :16 :84)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :17 :12)
cbde.store %_betrachtungstag, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :17 :12)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :20 :72) // Not a variable of known type: useCaseRepoLend
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :20 :89) // Not a variable of known type: betrachtungstag
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :20 :18) // new RepoLendImportFromJsonEntitiesToRicisDatabaseStep(useCaseRepoLend, betrachtungstag) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :21 :12) // Not a variable of known type: step
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :21 :86) // Not a variable of known type: useCaseRepoLend
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :21 :103) // Not a variable of known type: betrachtungstag
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :21 :28) // new JsonEntitiesReader<Tuple<TblRepoLend, TblInstrument>>(useCaseRepoLend, betrachtungstag) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :21 :12) // step.InitReader(new JsonEntitiesReader<Tuple<TblRepoLend, TblInstrument>>(useCaseRepoLend, betrachtungstag)) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :22 :31) // new IdentityDataImportProcessor<IList<Tuple<TblRepoLend, TblInstrument>>>() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :21 :12) // step.InitReader(new JsonEntitiesReader<Tuple<TblRepoLend, TblInstrument>>(useCaseRepoLend, betrachtungstag))                 .InitProcessor(new IdentityDataImportProcessor<IList<Tuple<TblRepoLend, TblInstrument>>>()) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendRepositoryWriter
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :23 :28) // RepoLendRepositoryWriter.GetInstance() (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :21 :12) // step.InitReader(new JsonEntitiesReader<Tuple<TblRepoLend, TblInstrument>>(useCaseRepoLend, betrachtungstag))                 .InitProcessor(new IdentityDataImportProcessor<IList<Tuple<TblRepoLend, TblInstrument>>>())                 .InitWriter(RepoLendRepositoryWriter.GetInstance()) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :24 :19) // Not a variable of known type: step
return %15 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs" :24 :12)

^1: // ExitBlock
cbde.unreachable

}
