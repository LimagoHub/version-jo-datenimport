func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.AbstractStep.Init$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\AbstractStep.cs" :6 :8) {
^entry :
br ^0

^0: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.AbstractStep.Dispose$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\AbstractStep.cs" :11 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Dispose
%0 = constant 1 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\AbstractStep.cs" :13 :20) // true
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\AbstractStep.cs" :13 :12) // Dispose(true) (InvocationExpression)
// Entity from another assembly: GC
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\AbstractStep.cs" :14 :32) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\AbstractStep.cs" :14 :12) // GC.SuppressFinalize(this) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.AbstractStep.Dispose$bool$(i1) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\AbstractStep.cs" :17 :8) {
^entry (%_disposing : i1):
%0 = cbde.alloca i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\AbstractStep.cs" :17 :39)
cbde.store %_disposing, %0 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\AbstractStep.cs" :17 :39)
br ^0

^0: // ExitBlock
return

}
