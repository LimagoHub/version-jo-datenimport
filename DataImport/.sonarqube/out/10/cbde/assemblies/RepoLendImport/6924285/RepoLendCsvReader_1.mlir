func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Step.RepoLendCsvReader.ConvertFieldSetToObject$BBk.Rc1.Ricis.SharedLibraries.GenericReadersAndWriters.File.Csv.LineTokenizer.FieldSet$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :15 :8) {
^entry (%_fieldSet : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :15 :63)
cbde.store %_fieldSet, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :15 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :17 :19) // new RepoLendDto             {                 Guid = Guid.NewGuid(),                 Ab2 = fieldSet.ReadDecimal("AB2"),                 Ab1 = fieldSet.ReadDecimal("AB1"),                 Beleg = fieldSet.ReadString("BELEG"),                 Datum = fieldSet.ReadDateTime("DATUM"),                 Datumab = fieldSet.ReadDateTime("DATUMAB"),                 Denr = fieldSet.ReadString("DENR"),                 Intrefrc = fieldSet.ReadString("INTREFRC"),                 Lfzb = fieldSet.ReadDateTime("LFZB"),                 Lfzv = fieldSet.ReadDateTime("LFZV"),                 Marktkurs = fieldSet.ReadDecimal("MARKTKURS"),                 Nennwert = fieldSet.ReadDecimal("NENNWERT"),                 Reart = fieldSet.ReadString("REART"),                 Reartbez = fieldSet.ReadString("REARTBEZ"),                 Snr = fieldSet.ReadString("SNR"),                 Snrbezk = fieldSet.ReadString("SNRBEZK"),                 Snrk = fieldSet.ReadString("SNRK"),                 Statb = fieldSet.ReadString("STATB"),                 Storno = fieldSet.ReadString("STORNO"),                 Whgu = fieldSet.ReadString("WHGU"),                 Wpbezk = fieldSet.ReadString("WPBEZK"),                 Wpnr = fieldSet.ReadString("WPNR"),                 Zeitab = fieldSet.ReadTime("ZEITAB"),                 Zs = fieldSet.ReadDecimal("ZS"),                 Zsmodb = fieldSet.ReadString("ZSMODB"),                 Zstage = fieldSet.ReadInteger("ZSTAGE")             } (ObjectCreationExpression)
// Entity from another assembly: Guid
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :19 :23) // Guid.NewGuid() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :20 :22) // Not a variable of known type: fieldSet
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :20 :43) // "AB2" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :20 :22) // fieldSet.ReadDecimal("AB2") (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :21 :22) // Not a variable of known type: fieldSet
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :21 :43) // "AB1" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :21 :22) // fieldSet.ReadDecimal("AB1") (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :22 :24) // Not a variable of known type: fieldSet
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :22 :44) // "BELEG" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :22 :24) // fieldSet.ReadString("BELEG") (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :23 :24) // Not a variable of known type: fieldSet
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :23 :46) // "DATUM" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :23 :24) // fieldSet.ReadDateTime("DATUM") (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :24 :26) // Not a variable of known type: fieldSet
%16 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :24 :48) // "DATUMAB" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :24 :26) // fieldSet.ReadDateTime("DATUMAB") (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :25 :23) // Not a variable of known type: fieldSet
%19 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :25 :43) // "DENR" (StringLiteralExpression)
%20 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :25 :23) // fieldSet.ReadString("DENR") (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :26 :27) // Not a variable of known type: fieldSet
%22 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :26 :47) // "INTREFRC" (StringLiteralExpression)
%23 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :26 :27) // fieldSet.ReadString("INTREFRC") (InvocationExpression)
%24 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :27 :23) // Not a variable of known type: fieldSet
%25 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :27 :45) // "LFZB" (StringLiteralExpression)
%26 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :27 :23) // fieldSet.ReadDateTime("LFZB") (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :28 :23) // Not a variable of known type: fieldSet
%28 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :28 :45) // "LFZV" (StringLiteralExpression)
%29 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :28 :23) // fieldSet.ReadDateTime("LFZV") (InvocationExpression)
%30 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :29 :28) // Not a variable of known type: fieldSet
%31 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :29 :49) // "MARKTKURS" (StringLiteralExpression)
%32 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :29 :28) // fieldSet.ReadDecimal("MARKTKURS") (InvocationExpression)
%33 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :30 :27) // Not a variable of known type: fieldSet
%34 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :30 :48) // "NENNWERT" (StringLiteralExpression)
%35 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :30 :27) // fieldSet.ReadDecimal("NENNWERT") (InvocationExpression)
%36 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :31 :24) // Not a variable of known type: fieldSet
%37 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :31 :44) // "REART" (StringLiteralExpression)
%38 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :31 :24) // fieldSet.ReadString("REART") (InvocationExpression)
%39 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :32 :27) // Not a variable of known type: fieldSet
%40 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :32 :47) // "REARTBEZ" (StringLiteralExpression)
%41 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :32 :27) // fieldSet.ReadString("REARTBEZ") (InvocationExpression)
%42 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :33 :22) // Not a variable of known type: fieldSet
%43 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :33 :42) // "SNR" (StringLiteralExpression)
%44 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :33 :22) // fieldSet.ReadString("SNR") (InvocationExpression)
%45 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :34 :26) // Not a variable of known type: fieldSet
%46 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :34 :46) // "SNRBEZK" (StringLiteralExpression)
%47 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :34 :26) // fieldSet.ReadString("SNRBEZK") (InvocationExpression)
%48 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :35 :23) // Not a variable of known type: fieldSet
%49 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :35 :43) // "SNRK" (StringLiteralExpression)
%50 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :35 :23) // fieldSet.ReadString("SNRK") (InvocationExpression)
%51 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :36 :24) // Not a variable of known type: fieldSet
%52 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :36 :44) // "STATB" (StringLiteralExpression)
%53 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :36 :24) // fieldSet.ReadString("STATB") (InvocationExpression)
%54 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :37 :25) // Not a variable of known type: fieldSet
%55 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :37 :45) // "STORNO" (StringLiteralExpression)
%56 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :37 :25) // fieldSet.ReadString("STORNO") (InvocationExpression)
%57 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :38 :23) // Not a variable of known type: fieldSet
%58 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :38 :43) // "WHGU" (StringLiteralExpression)
%59 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :38 :23) // fieldSet.ReadString("WHGU") (InvocationExpression)
%60 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :39 :25) // Not a variable of known type: fieldSet
%61 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :39 :45) // "WPBEZK" (StringLiteralExpression)
%62 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :39 :25) // fieldSet.ReadString("WPBEZK") (InvocationExpression)
%63 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :40 :23) // Not a variable of known type: fieldSet
%64 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :40 :43) // "WPNR" (StringLiteralExpression)
%65 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :40 :23) // fieldSet.ReadString("WPNR") (InvocationExpression)
%66 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :41 :25) // Not a variable of known type: fieldSet
%67 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :41 :43) // "ZEITAB" (StringLiteralExpression)
%68 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :41 :25) // fieldSet.ReadTime("ZEITAB") (InvocationExpression)
%69 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :42 :21) // Not a variable of known type: fieldSet
%70 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :42 :42) // "ZS" (StringLiteralExpression)
%71 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :42 :21) // fieldSet.ReadDecimal("ZS") (InvocationExpression)
%72 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :43 :25) // Not a variable of known type: fieldSet
%73 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :43 :45) // "ZSMODB" (StringLiteralExpression)
%74 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :43 :25) // fieldSet.ReadString("ZSMODB") (InvocationExpression)
%75 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :44 :25) // Not a variable of known type: fieldSet
%76 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :44 :46) // "ZSTAGE" (StringLiteralExpression)
%77 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :44 :25) // fieldSet.ReadInteger("ZSTAGE") (InvocationExpression)
return %1 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :17 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Step.RepoLendCsvReader.GetCsvFileReaderInstance$string$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :53 :8) {
^entry (%_fileName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :53 :65)
cbde.store %_fileName, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :53 :65)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :56 :45) // Not a variable of known type: fileName
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :56 :16) // new FileStreamReaderResource(fileName) (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :57 :16) // new DefaultCommaSeparatedLineTokenizer() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :55 :19) // new RepoLendCsvReader(                 new FileStreamReaderResource(fileName),                 new DefaultCommaSeparatedLineTokenizer()) (ObjectCreationExpression)
return %4 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :55 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Step.RepoLendCsvReader.GetCsvStringReaderInstance$string$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :65 :8) {
^entry (%_source : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :65 :67)
cbde.store %_source, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :65 :67)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :68 :47) // Not a variable of known type: source
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :68 :16) // new StringStreamReaderResource(source) (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :69 :16) // new DefaultCommaSeparatedLineTokenizer() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :67 :19) // new RepoLendCsvReader(                 new StringStreamReaderResource(source),                 new DefaultCommaSeparatedLineTokenizer()) (ObjectCreationExpression)
return %4 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Step\\ReadersWritersProcessors\\RepoLendCsvReader.cs" :67 :12)

^1: // ExitBlock
cbde.unreachable

}
