// Skipping function ReadString(i32, none, i1), it contains poisonous unsupported syntaxes

// Skipping function ReadDecimal(i32, none, none, none), it contains poisonous unsupported syntaxes

// Skipping function ReadDateTime(i32, none, none, none), it contains poisonous unsupported syntaxes

// Skipping function ReadTime(i32, none, none, none), it contains poisonous unsupported syntaxes

// Skipping function ReadBigInteger(i32, none, none), it contains poisonous unsupported syntaxes

// Skipping function ReadInteger(i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadLong(i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadByte(i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadSByte(i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadBool(i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadShort(i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadDouble(i32, none, none), it contains poisonous unsupported syntaxes

// Skipping function ReadFloat(i32, none, none), it contains poisonous unsupported syntaxes

// Skipping function ReadChar(i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadUShort(i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadUInt(i32, none), it contains poisonous unsupported syntaxes

// Skipping function ReadULong(i32, none), it contains poisonous unsupported syntaxes

func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadString$string.string.bool$(none, none, i1) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :143 :8) {
^entry (%_name : none, %_defaultValue : none, %_trim : i1):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :143 :33)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :143 :33)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :143 :46)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :143 :46)
%2 = cbde.alloca i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :143 :74)
cbde.store %_trim, %2 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :143 :74)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadString
// Entity from another assembly: Array
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :145 :44) // Not a variable of known type: Names
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :145 :51) // Not a variable of known type: name
%5 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :145 :30) // Array.IndexOf(Names, name) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :145 :58) // Not a variable of known type: defaultValue
%7 = cbde.load %2 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :145 :72)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :145 :19) // ReadString(Array.IndexOf(Names, name), defaultValue, trim) (InvocationExpression)
return %8 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :145 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadDecimal$string.decimal$.System.Globalization.NumberStyles.System.Globalization.CultureInfo$(none, none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :149 :8) {
^entry (%_name : none, %_defaultValue : none, %_styles : none, %_cultureInfo : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :149 :35)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :149 :35)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :149 :48)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :149 :48)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :150 :12)
cbde.store %_styles, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :150 :12)
%3 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :150 :54)
cbde.store %_cultureInfo, %3 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :150 :54)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadDecimal
// Entity from another assembly: Array
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :152 :45) // Not a variable of known type: Names
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :152 :52) // Not a variable of known type: name
%6 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :152 :31) // Array.IndexOf(Names, name) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :152 :59) // Not a variable of known type: defaultValue
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :152 :73) // Not a variable of known type: styles
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :152 :81) // Not a variable of known type: cultureInfo
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :152 :19) // ReadDecimal(Array.IndexOf(Names, name), defaultValue, styles, cultureInfo) (InvocationExpression)
return %10 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :152 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadDateTime$string.System.DateTime$.string.System.Globalization.CultureInfo$(none, none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :155 :8) {
^entry (%_name : none, %_defaultValue : none, %_format : none, %_cultureInfo : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :155 :37)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :155 :37)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :155 :50)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :155 :50)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :155 :81)
cbde.store %_format, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :155 :81)
%3 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :156 :12)
cbde.store %_cultureInfo, %3 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :156 :12)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadDateTime
// Entity from another assembly: Array
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :158 :46) // Not a variable of known type: Names
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :158 :53) // Not a variable of known type: name
%6 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :158 :32) // Array.IndexOf(Names, name) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :158 :60) // Not a variable of known type: defaultValue
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :158 :74) // Not a variable of known type: format
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :158 :82) // Not a variable of known type: cultureInfo
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :158 :19) // ReadDateTime(Array.IndexOf(Names, name), defaultValue, format, cultureInfo) (InvocationExpression)
return %10 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :158 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadTime$string.System.TimeSpan$.string.System.Globalization.CultureInfo$(none, none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :161 :8) {
^entry (%_name : none, %_defaultValue : none, %_format : none, %_cultureInfo : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :161 :33)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :161 :33)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :161 :46)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :161 :46)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :161 :77)
cbde.store %_format, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :161 :77)
%3 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :162 :12)
cbde.store %_cultureInfo, %3 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :162 :12)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadTime
// Entity from another assembly: Array
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :164 :42) // Not a variable of known type: Names
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :164 :49) // Not a variable of known type: name
%6 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :164 :28) // Array.IndexOf(Names, name) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :164 :56) // Not a variable of known type: defaultValue
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :164 :70) // Not a variable of known type: format
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :164 :78) // Not a variable of known type: cultureInfo
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :164 :19) // ReadTime(Array.IndexOf(Names, name), defaultValue, format, cultureInfo) (InvocationExpression)
return %10 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :164 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadBigInteger$string.System.Numerics.BigInteger$.System.Globalization.NumberFormatInfo$(none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :167 :8) {
^entry (%_name : none, %_defaultValue : none, %_numberFormat : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :167 :41)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :167 :41)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :167 :54)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :167 :54)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :168 :12)
cbde.store %_numberFormat, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :168 :12)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadBigInteger
// Entity from another assembly: Array
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :170 :48) // Not a variable of known type: Names
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :170 :55) // Not a variable of known type: name
%5 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :170 :34) // Array.IndexOf(Names, name) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :170 :62) // Not a variable of known type: defaultValue
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :170 :76) // Not a variable of known type: numberFormat
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :170 :19) // ReadBigInteger(Array.IndexOf(Names, name), defaultValue, numberFormat) (InvocationExpression)
return %8 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :170 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadInteger$string.int$$(none, none) -> i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :173 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :173 :31)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :173 :31)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :173 :44)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :173 :44)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadInteger
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :175 :45) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :175 :52) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :175 :31) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :175 :59) // Not a variable of known type: defaultValue
%6 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :175 :19) // ReadInteger(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :175 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadLong$string.long$$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :178 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :178 :29)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :178 :29)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :178 :42)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :178 :42)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadLong
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :180 :42) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :180 :49) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :180 :28) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :180 :56) // Not a variable of known type: defaultValue
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :180 :19) // ReadLong(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :180 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadByte$string.byte$$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :183 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :183 :29)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :183 :29)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :183 :42)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :183 :42)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadByte
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :185 :42) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :185 :49) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :185 :28) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :185 :56) // Not a variable of known type: defaultValue
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :185 :19) // ReadByte(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :185 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadSByte$string.sbyte$$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :188 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :188 :31)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :188 :31)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :188 :44)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :188 :44)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadSByte
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :190 :43) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :190 :50) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :190 :29) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :190 :57) // Not a variable of known type: defaultValue
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :190 :19) // ReadSByte(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :190 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadBool$string.bool$$(none, none) -> i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :193 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :193 :29)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :193 :29)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :193 :42)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :193 :42)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadBool
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :195 :42) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :195 :49) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :195 :28) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :195 :56) // Not a variable of known type: defaultValue
%6 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :195 :19) // ReadBool(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :195 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadShort$string.short$$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :198 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :198 :31)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :198 :31)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :198 :44)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :198 :44)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadShort
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :200 :43) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :200 :50) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :200 :29) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :200 :57) // Not a variable of known type: defaultValue
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :200 :19) // ReadShort(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :200 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadDouble$string.double$.System.Globalization.CultureInfo$(none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :203 :8) {
^entry (%_name : none, %_defaultValue : none, %_cultureInfo : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :203 :33)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :203 :33)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :203 :46)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :203 :46)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :203 :75)
cbde.store %_cultureInfo, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :203 :75)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadDouble
// Entity from another assembly: Array
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :205 :44) // Not a variable of known type: Names
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :205 :51) // Not a variable of known type: name
%5 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :205 :30) // Array.IndexOf(Names, name) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :205 :58) // Not a variable of known type: defaultValue
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :205 :72) // Not a variable of known type: cultureInfo
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :205 :19) // ReadDouble(Array.IndexOf(Names, name), defaultValue, cultureInfo) (InvocationExpression)
return %8 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :205 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadFloat$string.float$.System.Globalization.CultureInfo$(none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :208 :8) {
^entry (%_name : none, %_defaultValue : none, %_cultureInfo : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :208 :31)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :208 :31)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :208 :44)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :208 :44)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :208 :72)
cbde.store %_cultureInfo, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :208 :72)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadFloat
// Entity from another assembly: Array
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :210 :43) // Not a variable of known type: Names
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :210 :50) // Not a variable of known type: name
%5 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :210 :29) // Array.IndexOf(Names, name) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :210 :57) // Not a variable of known type: defaultValue
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :210 :71) // Not a variable of known type: cultureInfo
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :210 :19) // ReadFloat(Array.IndexOf(Names, name), defaultValue, cultureInfo) (InvocationExpression)
return %8 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :210 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadChar$string.char$$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :213 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :213 :29)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :213 :29)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :213 :42)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :213 :42)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadChar
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :215 :42) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :215 :49) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :215 :28) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :215 :56) // Not a variable of known type: defaultValue
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :215 :19) // ReadChar(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :215 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadUShort$string.ushort$$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :218 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :218 :33)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :218 :33)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :218 :46)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :218 :46)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadUShort
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :220 :44) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :220 :51) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :220 :30) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :220 :58) // Not a variable of known type: defaultValue
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :220 :19) // ReadUShort(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :220 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadUInt$string.uint$$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :223 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :223 :29)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :223 :29)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :223 :42)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :223 :42)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadUInt
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :225 :42) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :225 :49) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :225 :28) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :225 :56) // Not a variable of known type: defaultValue
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :225 :19) // ReadUInt(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :225 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet.ReadULong$string.ulong$$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :228 :8) {
^entry (%_name : none, %_defaultValue : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :228 :31)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :228 :31)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :228 :44)
cbde.store %_defaultValue, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :228 :44)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReadULong
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :230 :43) // Not a variable of known type: Names
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :230 :50) // Not a variable of known type: name
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :230 :29) // Array.IndexOf(Names, name) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :230 :57) // Not a variable of known type: defaultValue
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :230 :19) // ReadULong(Array.IndexOf(Names, name), defaultValue) (InvocationExpression)
return %6 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\GenericReadersAndWriters\\File\\Csv\\LineTokenizer\\FieldSet.cs" :230 :12)

^1: // ExitBlock
cbde.unreachable

}
