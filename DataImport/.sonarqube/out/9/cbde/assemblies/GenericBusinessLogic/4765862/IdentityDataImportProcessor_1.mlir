func @_BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step.IdentityDataImportProcessor$T$.GetAlerts$$() -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericBusinessLogic\\Step\\IdentityDataImportProcessor.cs" :11 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericBusinessLogic\\Step\\IdentityDataImportProcessor.cs" :13 :19) // new List<DataImportAlert>() (ObjectCreationExpression)
return %0 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericBusinessLogic\\Step\\IdentityDataImportProcessor.cs" :13 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.GenericBusinessLogic.Step.IdentityDataImportProcessor$T$.Process$T$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericBusinessLogic\\Step\\IdentityDataImportProcessor.cs" :16 :8) {
^entry (%_p : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericBusinessLogic\\Step\\IdentityDataImportProcessor.cs" :16 :25)
cbde.store %_p, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericBusinessLogic\\Step\\IdentityDataImportProcessor.cs" :16 :25)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericBusinessLogic\\Step\\IdentityDataImportProcessor.cs" :18 :19) // Not a variable of known type: p
return %1 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericBusinessLogic\\Step\\IdentityDataImportProcessor.cs" :18 :12)

^1: // ExitBlock
cbde.unreachable

}
