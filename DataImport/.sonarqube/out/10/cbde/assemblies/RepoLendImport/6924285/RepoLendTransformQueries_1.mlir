// Skipping function GetCounterpartFromMapping(none, none), it contains poisonous unsupported syntaxes

func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Queries.RepoLendTransformQueries.GetFileKey$string.string$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :50 :8) {
^entry (%_fileType : none, %_keyName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :50 :33)
cbde.store %_fileType, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :50 :33)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :50 :50)
cbde.store %_keyName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :50 :50)
br ^0

^0: // ForInitializerBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :52 :30) // Not a variable of known type: config
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :52 :46) // Not a variable of known type: fileType
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :52 :56) // Not a variable of known type: instance
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :52 :30) // config.GetValue(fileType, instance) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :53 :24) // Not a variable of known type: configValue
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :53 :42) // '|' (CharacterLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :53 :24) // configValue.Split('|') (InvocationExpression)
%11 = constant 0 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :25)
%12 = cbde.alloca i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :21) // i
cbde.store %11, %12 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :21)
br ^1

^1: // BinaryBranchBlock
%13 = cbde.load %12 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :28)
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :32) // Not a variable of known type: array
%15 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :32) // array.Length (SimpleMemberAccessExpression)
%16 = constant 1 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :47)
%17 = subi %15, %16 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :32)
%18 = cmpi "slt", %13, %17 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :28)
cond_br %18, ^2, ^3 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :28)

^2: // BinaryBranchBlock
%19 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :55 :20) // Not a variable of known type: array
%20 = cbde.load %12 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :55 :26)
%21 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :55 :20) // array[i] (ElementAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :55 :32) // Not a variable of known type: keyName
%23 = cbde.unknown : i1  loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :55 :20) // comparison of unknown type: array[i] == keyName
cond_br %23, ^4, ^5 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :55 :20)

^4: // JumpBlock
%24 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :56 :27) // Not a variable of known type: array
%25 = cbde.load %12 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :56 :33)
%26 = constant 1 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :56 :37)
%27 = addi %25, %26 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :56 :33)
%28 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :56 :27) // array[i + 1] (ElementAccessExpression)
return %28 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :56 :20)

^5: // SimpleBlock
%29 = cbde.load %12 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :50)
%30 = constant 2 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :55)
%31 = addi %29, %30 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :50)
cbde.store %31, %12 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :54 :50)
br ^1

^3: // JumpBlock
%32 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :58 :43) // Not a variable of known type: keyName
%33 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :58 :67) // Not a variable of known type: fileType
%34 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :58 :16) // $"Konfigurationsparameter {keyName} für Schlüssel {fileType} nicht vorhanden. Bitte Konfiguration pflegen." (InterpolatedStringExpression)
%35 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :57 :18) // new RicisConfigurationException(                 $"Konfigurationsparameter {keyName} für Schlüssel {fileType} nicht vorhanden. Bitte Konfiguration pflegen.") (ObjectCreationExpression)
cbde.throw %35 :  none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Queries\\RepoLendTransformQueries.cs" :57 :12)

^6: // ExitBlock
cbde.unreachable

}
// Skipping function GetInstrumentNoByIsin(none), it contains poisonous unsupported syntaxes

// Skipping function GetPortfolioNoFromKey(none, none), it contains poisonous unsupported syntaxes

// Skipping function GetPropertyValueByCounterparty(i32, none), it contains poisonous unsupported syntaxes

