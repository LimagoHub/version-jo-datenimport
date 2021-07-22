func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.DataImportCheckException.GetObjectData$System.Runtime.Serialization.SerializationInfo.System.Runtime.Serialization.StreamingContext$(none, none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\DataImportCheckException.cs" :17 :8) {
^entry (%_info : none, %_context : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\DataImportCheckException.cs" :17 :43)
cbde.store %_info, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\DataImportCheckException.cs" :17 :43)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\DataImportCheckException.cs" :17 :67)
cbde.store %_context, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\DataImportCheckException.cs" :17 :67)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\DataImportCheckException.cs" :19 :12) // base (BaseExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\DataImportCheckException.cs" :19 :31) // Not a variable of known type: info
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\DataImportCheckException.cs" :19 :37) // Not a variable of known type: context
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\DataImportCheckException.cs" :19 :12) // base.GetObjectData(info, context) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
