func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Job.RepoLendImportAfterUserEditJob.GetInstance$string.System.DateTime$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :12 :8) {
^entry (%_useCaseRepoLend : none, %_betrachtungstag : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :12 :65)
cbde.store %_useCaseRepoLend, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :12 :65)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :12 :89)
cbde.store %_betrachtungstag, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :12 :89)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :14 :22) // new RepoLendImportAfterUserEditJob() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :15 :12) // Not a variable of known type: job
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :16 :29) // Not a variable of known type: useCaseRepoLend
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :16 :46) // Not a variable of known type: betrachtungstag
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :15 :24) // RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep                 .GetInstance(useCaseRepoLend, betrachtungstag) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :15 :12) // job.AddStep(RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep                 .GetInstance(useCaseRepoLend, betrachtungstag)) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :17 :12) // Not a variable of known type: job
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendImportFromJsonEntitiesToRicisDatabaseStep
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :18 :29) // Not a variable of known type: useCaseRepoLend
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :18 :46) // Not a variable of known type: betrachtungstag
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :17 :24) // RepoLendImportFromJsonEntitiesToRicisDatabaseStep                 .GetInstance(useCaseRepoLend, betrachtungstag) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :17 :12) // job.AddStep(RepoLendImportFromJsonEntitiesToRicisDatabaseStep                 .GetInstance(useCaseRepoLend, betrachtungstag)) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :19 :19) // Not a variable of known type: job
return %14 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAfterUserEditJob.cs" :19 :12)

^1: // ExitBlock
cbde.unreachable

}
