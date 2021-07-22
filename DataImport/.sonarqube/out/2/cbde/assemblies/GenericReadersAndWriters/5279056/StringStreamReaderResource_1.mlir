func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources.StringStreamReaderResource.GetStreamReader$$() -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :13 :8) {
^entry :
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GenerateStreamReaderFromResourceString
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :15 :58) // Not a variable of known type: _resourceString
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :15 :19) // GenerateStreamReaderFromResourceString(_resourceString) (InvocationExpression)
return %1 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :15 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Resources.StringStreamReaderResource.GenerateStreamReaderFromResourceString$string$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :18 :8) {
^entry (%_s : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :18 :75)
cbde.store %_s, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :18 :75)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :20 :25) // new MemoryStream() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :21 :42) // Not a variable of known type: stream
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :21 :25) // new StreamWriter(stream) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :22 :12) // Not a variable of known type: writer
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :22 :25) // Not a variable of known type: s
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :22 :12) // writer.Write(s) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :23 :12) // Not a variable of known type: writer
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :23 :12) // writer.Flush() (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :24 :12) // Not a variable of known type: stream
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :24 :12) // stream.Position (SimpleMemberAccessExpression)
%13 = constant 0 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :24 :30)
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :25 :36) // Not a variable of known type: stream
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :25 :19) // new StreamReader(stream) (ObjectCreationExpression)
return %15 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Resources\\StringStreamReaderResource.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
