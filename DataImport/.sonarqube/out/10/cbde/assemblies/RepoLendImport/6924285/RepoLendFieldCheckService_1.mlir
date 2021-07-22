func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.RepoLendFieldCheckService.CheckFields$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :16 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CheckErrors
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :18 :12) // CheckErrors() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CheckWarnings
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :19 :12) // CheckWarnings() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CheckInfos
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :20 :12) // CheckInfos() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.RepoLendFieldCheckService.CheckInfos$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :23 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Info
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :18) // Not a variable of known type: Item
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :18) // Item.Zsmodb (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :39) // "act/360" (StringLiteralExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :18) // Item.Zsmodb.Contains("act/360") (InvocationExpression)
%4 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :17) // !Item.Zsmodb.Contains("act/360") (LogicalNotExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :12) // Info(!Item.Zsmodb.Contains("act/360")) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :59) // "Die Zinskonvention enthält nicht 'act/360'" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :12) // Info(!Item.Zsmodb.Contains("act/360")).Message("Die Zinskonvention enthält nicht 'act/360'") (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :111) // "Zsmodb" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :12) // Info(!Item.Zsmodb.Contains("act/360")).Message("Die Zinskonvention enthält nicht 'act/360'").Field("Zsmodb") (InvocationExpression)
%10 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :25 :12) // Info(!Item.Zsmodb.Contains("act/360")).Message("Die Zinskonvention enthält nicht 'act/360'").Field("Zsmodb")                 .addToAlerts() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.RepoLendFieldCheckService.CheckWarnings$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :29 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Warning
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :21) // Not a variable of known type: Betrachtungstag
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :39) // Not a variable of known type: Item
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :39) // Item.Datumab (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :21) // Binary expression on unsupported types Betrachtungstag - Item.Datumab
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :20) // (Betrachtungstag - Item.Datumab).Days (SimpleMemberAccessExpression)
%5 = constant 21 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :60)
%6 = cmpi "sgt", %4, %5 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :20)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :12) // Warning((Betrachtungstag - Item.Datumab).Days > 21) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :32 :25) // "Der Handelstag liegt mehr als 21 Tage in der Vergangenheit." (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :12) // Warning((Betrachtungstag - Item.Datumab).Days > 21)                 .Message("Der Handelstag liegt mehr als 21 Tage in der Vergangenheit.") (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :32 :94) // "Datumab" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :12) // Warning((Betrachtungstag - Item.Datumab).Days > 21)                 .Message("Der Handelstag liegt mehr als 21 Tage in der Vergangenheit.").Field("Datumab") (InvocationExpression)
%12 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :31 :12) // Warning((Betrachtungstag - Item.Datumab).Days > 21)                 .Message("Der Handelstag liegt mehr als 21 Tage in der Vergangenheit.").Field("Datumab").addToAlerts() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Warning
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :20) // Not a variable of known type: Item
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :20) // Item.Marktkurs (SimpleMemberAccessExpression)
%15 = constant unit loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :38) // 0M (NumericLiteralExpression)
%16 = cbde.unknown : i1  loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :20) // comparison of unknown type: Item.Marktkurs == 0M
%17 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :12) // Warning(Item.Marktkurs == 0M) (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :50) // "Der Marktkurs ist 0." (StringLiteralExpression)
%19 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :12) // Warning(Item.Marktkurs == 0M).Message("Der Marktkurs ist 0.") (InvocationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :80) // "Marktkurs" (StringLiteralExpression)
%21 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :12) // Warning(Item.Marktkurs == 0M).Message("Der Marktkurs ist 0.").Field("Marktkurs") (InvocationExpression)
%22 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendFieldCheckService.cs" :33 :12) // Warning(Item.Marktkurs == 0M).Message("Der Marktkurs ist 0.").Field("Marktkurs").addToAlerts() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function CheckErrors(), it contains poisonous unsupported syntaxes

