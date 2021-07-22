func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Job.AbstractJob.AddStep$BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.IStep$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :10 :8) {
^entry (%_step : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :10 :28)
cbde.store %_step, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :10 :28)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :12 :12) // Not a variable of known type: _steps
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :12 :23) // Not a variable of known type: step
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :12 :12) // _steps.Add(step) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Job.AbstractJob.RemoveStep$BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.IStep$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :15 :8) {
^entry (%_step : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :15 :31)
cbde.store %_step, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :15 :31)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :17 :12) // Not a variable of known type: _steps
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :17 :26) // Not a variable of known type: step
%3 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :17 :12) // _steps.Remove(step) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function RunAllSteps(), it contains poisonous unsupported syntaxes

func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Job.AbstractJob.Dispose$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :30 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Dispose
%0 = constant 1 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :32 :20) // true
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :32 :12) // Dispose(true) (InvocationExpression)
// Entity from another assembly: GC
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :33 :32) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :33 :12) // GC.SuppressFinalize(this) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Job.AbstractJob.Dispose$bool$(i1) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :36 :8) {
^entry (%_disposing : i1):
%0 = cbde.alloca i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :36 :39)
cbde.store %_disposing, %0 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Job\\AbstractJob.cs" :36 :39)
br ^0

^0: // ExitBlock
return

}
