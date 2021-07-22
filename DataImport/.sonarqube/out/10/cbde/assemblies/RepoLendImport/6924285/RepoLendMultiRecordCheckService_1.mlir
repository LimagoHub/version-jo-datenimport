func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.RepoLendMultiRecordCheckService.CheckFields$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :17 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: OBSBelegnrIstMehrfachVorhanden
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :19 :12) // OBSBelegnrIstMehrfachVorhanden( ) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: HandleReart
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :20 :12) // HandleReart( ) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.RepoLendMultiRecordCheckService.HandleReart$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :23 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ReartHandlerFactory
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :25 :65) // Not a variable of known type: Item
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :25 :65) // Item.Reart (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :25 :77) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :25 :26) // ReartHandlerFactory.CreateReartHandler(Item.Reart, this) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :26 :16) // Not a variable of known type: handler
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :26 :27) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :26 :16) // comparison of unknown type: handler != null
cond_br %7, ^1, ^2 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :26 :16)

^1: // SimpleBlock
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :27 :16) // Not a variable of known type: handler
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :27 :31) // Not a variable of known type: Item
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :27 :37) // Not a variable of known type: P
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :27 :37) // P.ToList() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\RepoLendMultiRecordCheckService.cs" :27 :16) // handler.handle(Item, P.ToList()) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function OBSBelegnrIstMehrfachVorhanden(), it contains poisonous unsupported syntaxes

// Skipping function findRepoLendDtos(), it contains poisonous unsupported syntaxes

// Skipping function CreateReartHandler(none, none), it contains poisonous unsupported syntaxes

// Skipping function handle(none, none), it contains poisonous unsupported syntaxes

// Skipping function handle(none, none), it contains poisonous unsupported syntaxes

// Skipping function handle(none, none), it contains poisonous unsupported syntaxes

