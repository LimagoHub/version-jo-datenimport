func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.RepoLendInitImportFileService.GetInstance$string$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendInitImportFileService.cs" :10 :8) {
^entry (%_useCaseRepoLend : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendInitImportFileService.cs" :10 :64)
cbde.store %_useCaseRepoLend, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendInitImportFileService.cs" :10 :64)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendInitImportFileService.cs" :12 :53) // new DataImportConfiguration() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendInitImportFileService.cs" :12 :84) // Not a variable of known type: useCaseRepoLend
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendInitImportFileService.cs" :12 :19) // new RepoLendInitImportFileService(new DataImportConfiguration(), useCaseRepoLend) (ObjectCreationExpression)
return %3 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendInitImportFileService.cs" :12 :12)

^1: // ExitBlock
cbde.unreachable

}
