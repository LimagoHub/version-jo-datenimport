func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.DefaultCommaSeparatedLineTokenizer.Tokenize$string$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\DefaultCommaSeparatedLineTokenizer.cs" :11 :8) {
^entry (%_line : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\DefaultCommaSeparatedLineTokenizer.cs" :11 :41)
cbde.store %_line, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\DefaultCommaSeparatedLineTokenizer.cs" :11 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\DefaultCommaSeparatedLineTokenizer.cs" :13 :32) // Not a variable of known type: line
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\DefaultCommaSeparatedLineTokenizer.cs" :13 :43) // Not a variable of known type: Delimiter
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\DefaultCommaSeparatedLineTokenizer.cs" :13 :32) // line.Split(Delimiter) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\DefaultCommaSeparatedLineTokenizer.cs" :13 :19) // new FieldSet(line.Split(Delimiter)) (ObjectCreationExpression)
return %4 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\DefaultCommaSeparatedLineTokenizer.cs" :13 :12)

^1: // ExitBlock
cbde.unreachable

}
