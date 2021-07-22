func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.IdentityProcessor$T$.Process$T$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\IdentityProcessor.cs" :4 :8) {
^entry (%_p : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\IdentityProcessor.cs" :4 :25)
cbde.store %_p, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\IdentityProcessor.cs" :4 :25)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\IdentityProcessor.cs" :6 :19) // Not a variable of known type: p
return %1 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\IdentityProcessor.cs" :6 :12)

^1: // ExitBlock
cbde.unreachable

}
