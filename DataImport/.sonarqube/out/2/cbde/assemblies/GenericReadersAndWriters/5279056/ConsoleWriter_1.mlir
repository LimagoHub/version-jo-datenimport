func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.Console.ConsoleWriter$T$.Write$T$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :7 :8) {
^entry (%_t : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :7 :26)
cbde.store %_t, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :7 :26)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :9 :12) // new JsonSerializer                 {                     Formatting = Formatting.Indented                 } (ObjectCreationExpression)
// Entity from another assembly: Formatting
%2 = constant unit loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :11 :33) // Formatting.Indented (SimpleMemberAccessExpression)
// Entity from another assembly: System
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :13 :27) // System.Console (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :13 :27) // System.Console.Out (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :13 :47) // Not a variable of known type: t
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :13 :50) // typeof(T) (TypeOfExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\Console\\ConsoleWriter.cs" :9 :12) // new JsonSerializer                 {                     Formatting = Formatting.Indented                 }                 .Serialize(System.Console.Out, t, typeof(T)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
