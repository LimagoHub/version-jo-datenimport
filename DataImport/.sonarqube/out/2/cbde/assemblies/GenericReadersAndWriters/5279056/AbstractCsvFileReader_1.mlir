// Skipping function ReadLines(), it contains poisonous unsupported syntaxes

func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.AbstractCsvFileReader$T$.ConversionWrapper$string$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :45 :8) {
^entry (%_line : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :45 :36)
cbde.store %_line, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :45 :36)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :47 :27) // Not a variable of known type: Tokenizer
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :47 :46) // Not a variable of known type: line
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :47 :27) // Tokenizer.Tokenize(line) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :48 :12) // Not a variable of known type: fieldSet
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :48 :12) // fieldSet.Names (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :48 :29) // Not a variable of known type: Names
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ConvertFieldSetToObject
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :49 :43) // Not a variable of known type: fieldSet
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :49 :19) // ConvertFieldSetToObject(fieldSet) (InvocationExpression)
return %9 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :49 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function Read(), it contains poisonous unsupported syntaxes

func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.AbstractCsvFileReader$T$.ReadNames$BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :62 :8) {
^entry (%_set : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :62 :31)
cbde.store %_set, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :62 :31)
br ^0

^0: // ForInitializerBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :64 :24) // new List<string>() (ObjectCreationExpression)
%3 = constant 0 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :25)
%4 = cbde.alloca i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :21) // i
cbde.store %3, %4 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :21)
br ^1

^1: // BinaryBranchBlock
%5 = cbde.load %4 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :28)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :32) // Not a variable of known type: set
%7 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :32) // set.ColumnCount (SimpleMemberAccessExpression)
%8 = cmpi "slt", %5, %7 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :28)
cond_br %8, ^2, ^3 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :28)

^2: // SimpleBlock
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :54) // Not a variable of known type: names
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :64) // Not a variable of known type: set
%11 = cbde.load %4 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :79)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :64) // set.ReadString(i) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :54) // names.Add(set.ReadString(i)) (InvocationExpression)
br ^4

^4: // SimpleBlock
%14 = cbde.load %4 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :49)
%15 = constant 1 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :49)
%16 = addi %14, %15 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :49)
cbde.store %16, %4 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :65 :49)
br ^1

^3: // SimpleBlock
%17 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :66 :20) // Not a variable of known type: names
%18 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\AbstractCsvFileReader.cs" :66 :20) // names.ToArray() (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
