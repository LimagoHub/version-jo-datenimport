func @_BBk.Rc1.Ricis.DataImport.Program.Main$string$$$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :12 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :12 :32)
cbde.store %_args, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :12 :32)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EnsureCreatedDatabases
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :14 :12) // EnsureCreatedDatabases() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Run
%2 = constant 2021 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :15 :29)
%3 = constant 1 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :15 :35)
%4 = constant 25 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :15 :38)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :15 :16) // new DateTime(2021, 1, 25) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :15 :12) // Run(new DateTime(2021, 1, 25)) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Run
%7 = constant 2021 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :16 :29)
%8 = constant 1 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :16 :35)
%9 = constant 26 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :16 :38)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :16 :16) // new DateTime(2021, 1, 26) (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :16 :12) // Run(new DateTime(2021, 1, 26)) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Run
%12 = constant 2021 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :17 :29)
%13 = constant 1 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :17 :35)
%14 = constant 27 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :17 :38)
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :17 :16) // new DateTime(2021, 1, 27) (ObjectCreationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :17 :12) // Run(new DateTime(2021, 1, 27)) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Run
%17 = constant 2021 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :18 :29)
%18 = constant 1 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :18 :35)
%19 = constant 28 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :18 :38)
%20 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :18 :16) // new DateTime(2021, 1, 28) (ObjectCreationExpression)
%21 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :18 :12) // Run(new DateTime(2021, 1, 28)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function EnsureCreatedDatabases(), it contains poisonous unsupported syntaxes

func @_BBk.Rc1.Ricis.DataImport.Program.Run$System.DateTime$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :32 :8) {
^entry (%_betrachtungstag : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :32 :32)
cbde.store %_betrachtungstag, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :32 :32)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RunRepoLendImportAutomaticJob
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :34 :42) // Not a variable of known type: betrachtungstag
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DataImport\\Program.cs" :34 :12) // RunRepoLendImportAutomaticJob(betrachtungstag) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function RunRepoLendImportAutomaticJob(none), it contains poisonous unsupported syntaxes

