func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Job.RepoLendImportAfterUserOkJob.GetInstance$string.System.DateTime$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :12 :8) {
^entry (%_useCaseRepoLend : none, %_betrachtungstag : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :12 :63)
cbde.store %_useCaseRepoLend, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :12 :63)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :12 :87)
cbde.store %_betrachtungstag, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :12 :87)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :14 :22) // new RepoLendImportAfterUserOkJob() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :15 :12) // Not a variable of known type: job
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendImportFromJsonEntitiesToRicisDatabaseStep
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :16 :29) // Not a variable of known type: useCaseRepoLend
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :16 :46) // Not a variable of known type: betrachtungstag
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :15 :24) // RepoLendImportFromJsonEntitiesToRicisDatabaseStep                 .GetInstance(useCaseRepoLend, betrachtungstag) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :15 :12) // job.AddStep(RepoLendImportFromJsonEntitiesToRicisDatabaseStep                 .GetInstance(useCaseRepoLend, betrachtungstag)) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :17 :19) // Not a variable of known type: job
return %9 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserOkJob.cs" :17 :12)

^1: // ExitBlock
cbde.unreachable

}
