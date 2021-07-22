func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Job.RepoLendImportAutomaticJob.GetInstance$string.System.DateTime$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :18 :8) {
^entry (%_useCaseRepoLend : none, %_betrachtungstag : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :18 :61)
cbde.store %_useCaseRepoLend, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :18 :61)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :18 :85)
cbde.store %_betrachtungstag, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :18 :85)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :20 :16) // new RepoLendCheckImportDateService() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :20 :70) // Not a variable of known type: betrachtungstag
%4 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :20 :16) // new RepoLendCheckImportDateService().IsDataInDatabase(betrachtungstag) (InvocationExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :20 :16)

^1: // JumpBlock
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :22 :52) // Not a variable of known type: betrachtungstag
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :22 :20) // $"Bereits Daten zum Handelstag {betrachtungstag:d} in der Datenbank vorhanden." (InterpolatedStringExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :21 :22) // new DataImportException(                     $"Bereits Daten zum Handelstag {betrachtungstag:d} in der Datenbank vorhanden.") (ObjectCreationExpression)
cbde.throw %7 :  none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :21 :16)

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendInitImportFileService
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :24 :60) // Not a variable of known type: useCaseRepoLend
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :24 :18) // RepoLendInitImportFileService.GetInstance(useCaseRepoLend) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :24 :86) // Not a variable of known type: betrachtungstag
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :24 :18) // RepoLendInitImportFileService.GetInstance(useCaseRepoLend).GetFiles(betrachtungstag) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :25 :16) // Not a variable of known type: importFileInfos
%14 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :25 :16) // importFileInfos.Count (SimpleMemberAccessExpression)
%15 = constant 0 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :25 :41)
%16 = cmpi "eq", %14, %15 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :25 :16)
cond_br %16, ^3, ^4 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :25 :16)

^3: // JumpBlock
%17 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :26 :77) // Not a variable of known type: betrachtungstag
%18 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :26 :46) // $"Keine Importdatei zum Datum {betrachtungstag:d} vorhanden." (InterpolatedStringExpression)
%19 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :26 :22) // new DataImportException($"Keine Importdatei zum Datum {betrachtungstag:d} vorhanden.") (ObjectCreationExpression)
cbde.throw %19 :  none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :26 :16)

^4: // BinaryBranchBlock
%20 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :27 :16) // Not a variable of known type: importFileInfos
%21 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :27 :16) // importFileInfos.Count (SimpleMemberAccessExpression)
%22 = constant 1 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :27 :40)
%23 = cmpi "sgt", %21, %22 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :27 :16)
cond_br %23, ^5, ^6 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :27 :16)

^5: // JumpBlock
%24 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :28 :85) // Not a variable of known type: betrachtungstag
%25 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :28 :46) // $"Mehr als eine Importdatei zum Datum {betrachtungstag:d} vorhanden." (InterpolatedStringExpression)
%26 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :28 :22) // new DataImportException($"Mehr als eine Importdatei zum Datum {betrachtungstag:d} vorhanden.") (ObjectCreationExpression)
cbde.throw %26 :  none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :28 :16)

^6: // JumpBlock
%27 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :29 :27) // Not a variable of known type: importFileInfos
%28 = constant 0 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :29 :43)
%29 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :29 :27) // importFileInfos[0] (ElementAccessExpression)
%30 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :29 :27) // importFileInfos[0].FullName (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :30 :22) // new RepoLendImportAutomaticJob             {                 ImportFileInfos = importFileInfos             } (ObjectCreationExpression)
%33 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :32 :34) // Not a variable of known type: importFileInfos
%35 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :34 :12) // Not a variable of known type: job
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendImportFromCsvFileToArchivedFileStep
%36 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :35 :29) // Not a variable of known type: useCaseRepoLend
%37 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :35 :46) // Not a variable of known type: betrachtungstag
%38 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :35 :63) // Not a variable of known type: fileName
%39 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :34 :24) // RepoLendImportFromCsvFileToArchivedFileStep                 .GetInstance(useCaseRepoLend, betrachtungstag, fileName) (InvocationExpression)
%40 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :34 :12) // job.AddStep(RepoLendImportFromCsvFileToArchivedFileStep                 .GetInstance(useCaseRepoLend, betrachtungstag, fileName)) (InvocationExpression)
%41 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :36 :12) // Not a variable of known type: job
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendImportFromArchivedFileToJsonDtosStep
%42 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :37 :29) // Not a variable of known type: useCaseRepoLend
%43 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :37 :46) // Not a variable of known type: betrachtungstag
%44 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :36 :24) // RepoLendImportFromArchivedFileToJsonDtosStep                 .GetInstance(useCaseRepoLend, betrachtungstag) (InvocationExpression)
%45 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :36 :12) // job.AddStep(RepoLendImportFromArchivedFileToJsonDtosStep                 .GetInstance(useCaseRepoLend, betrachtungstag)) (InvocationExpression)
%46 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :38 :12) // Not a variable of known type: job
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep
%47 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :39 :29) // Not a variable of known type: useCaseRepoLend
%48 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :39 :46) // Not a variable of known type: betrachtungstag
%49 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :38 :24) // RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep                 .GetInstance(useCaseRepoLend, betrachtungstag) (InvocationExpression)
%50 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :38 :12) // job.AddStep(RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep                 .GetInstance(useCaseRepoLend, betrachtungstag)) (InvocationExpression)
%51 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :40 :12) // Not a variable of known type: job
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RepoLendImportFromJsonEntitiesToRicisDatabaseStep
%52 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :41 :29) // Not a variable of known type: useCaseRepoLend
%53 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :41 :46) // Not a variable of known type: betrachtungstag
%54 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :40 :24) // RepoLendImportFromJsonEntitiesToRicisDatabaseStep                 .GetInstance(useCaseRepoLend, betrachtungstag) (InvocationExpression)
%55 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :40 :12) // job.AddStep(RepoLendImportFromJsonEntitiesToRicisDatabaseStep                 .GetInstance(useCaseRepoLend, betrachtungstag)) (InvocationExpression)
%56 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :42 :19) // Not a variable of known type: job
return %56 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Job\\RepoLendImportAutomaticJob.cs" :42 :12)

^7: // ExitBlock
cbde.unreachable

}
