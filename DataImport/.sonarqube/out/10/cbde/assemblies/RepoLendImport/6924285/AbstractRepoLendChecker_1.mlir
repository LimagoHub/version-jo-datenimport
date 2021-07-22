// Skipping function Check(none), it contains poisonous unsupported syntaxes

func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.Warning$bool$(i1) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :40 :8) {
^entry (%_predicate : i1):
%0 = cbde.alloca i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :40 :37)
cbde.store %_predicate, %0 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :40 :37)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :42 :37) // this (ThisExpression)
%2 = cbde.load %0 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :42 :42)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :42 :19) // new WarningHelper(this,predicate) (ObjectCreationExpression)
return %3 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :42 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.Error$bool$(i1) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :45 :8) {
^entry (%_predicate : i1):
%0 = cbde.alloca i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :45 :33)
cbde.store %_predicate, %0 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :45 :33)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :47 :35) // this (ThisExpression)
%2 = cbde.load %0 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :47 :41)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :47 :19) // new ErrorHelper(this, predicate) (ObjectCreationExpression)
return %3 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :47 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.Info$bool$(i1) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :50 :8) {
^entry (%_predicate : i1):
%0 = cbde.alloca i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :50 :31)
cbde.store %_predicate, %0 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :50 :31)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :52 :34) // this (ThisExpression)
%2 = cbde.load %0 : memref<i1> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :52 :40)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :52 :19) // new InfoHelper(this, predicate) (ObjectCreationExpression)
return %3 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :52 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.IsInt$string$(none) -> i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :57 :8) {
^entry (%_expression : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :57 :36)
cbde.store %_expression, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :57 :36)
br ^0

^0: // JumpBlock
%1 = cbde.alloca i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :59 :16) // notUsed
%2 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :60 :19) // int (PredefinedType)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :60 :32) // Not a variable of known type: expression
%4 = cbde.load %1 : memref<i32> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :60 :48)
%5 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :60 :19) // int.TryParse(expression, out notUsed) (InvocationExpression)
return %5 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :60 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.IsNotInt$string$(none) -> i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :62 :8) {
^entry (%_expression : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :62 :39)
cbde.store %_expression, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :62 :39)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsInt
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :65 :26) // Not a variable of known type: expression
%2 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :65 :20) // IsInt(expression) (InvocationExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :65 :19) // !IsInt(expression) (LogicalNotExpression)
return %3 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :65 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.NotIsIn$string.paramsstring$$$(none, none) -> i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :68 :8) {
^entry (%_s : none, %_sList : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :68 :38)
cbde.store %_s, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :68 :38)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :68 :48)
cbde.store %_sList, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :68 :48)
br ^0

^0: // JumpBlock
// Entity from another assembly: Array
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :71 :33) // Not a variable of known type: sList
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :71 :40) // Not a variable of known type: s
%4 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :71 :19) // Array.IndexOf(sList, s) (InvocationExpression)
%5 = constant 0 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :71 :45)
%6 = cmpi "slt", %4, %5 : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :71 :19)
return %6 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :71 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.IssueHelper.Message$string$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :89 :12) {
^entry (%_message : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :89 :39)
cbde.store %_message, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :89 :39)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :91 :16) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :91 :16) // this.message (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :91 :31) // Not a variable of known type: message
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :92 :23) // this (ThisExpression)
return %4 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :92 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.IssueHelper.Field$RepoLendDto$$System.Guid.string$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :95 :12) {
^entry (%_dtoGuid : none, %_propertyName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :95 :58)
cbde.store %_dtoGuid, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :95 :58)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :95 :72)
cbde.store %_propertyName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :95 :72)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :97 :16) // Not a variable of known type: alertFields
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :97 :32) // new AlertField                  {                      DtoGuid = dtoGuid,                      PropertyInfo = typeof(RepoLendDto).GetProperty(propertyName)                  } (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :99 :30) // Not a variable of known type: dtoGuid
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :100 :35) // typeof(RepoLendDto) (TypeOfExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :100 :67) // Not a variable of known type: propertyName
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :100 :35) // typeof(RepoLendDto).GetProperty(propertyName) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :97 :16) // alertFields.Add(new AlertField                  {                      DtoGuid = dtoGuid,                      PropertyInfo = typeof(RepoLendDto).GetProperty(propertyName)                  }) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :102 :23) // this (ThisExpression)
return %9 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :102 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.IssueHelper.Field$System.Guid.string.System.Type$(none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :106 :12) {
^entry (%_dtoGuid : none, %_propertyName : none, %_type : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :106 :45)
cbde.store %_dtoGuid, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :106 :45)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :106 :59)
cbde.store %_propertyName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :106 :59)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :106 :80)
cbde.store %_type, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :106 :80)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :107 :14) // Not a variable of known type: alertFields
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :107 :30) // new AlertField                  {                      DtoGuid = dtoGuid,                      PropertyInfo = type.GetProperty(propertyName)                  } (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :109 :30) // Not a variable of known type: dtoGuid
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :110 :35) // Not a variable of known type: type
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :110 :52) // Not a variable of known type: propertyName
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :110 :35) // type.GetProperty(propertyName) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :107 :14) // alertFields.Add(new AlertField                  {                      DtoGuid = dtoGuid,                      PropertyInfo = type.GetProperty(propertyName)                  }) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :112 :23) // this (ThisExpression)
return %10 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :112 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.IssueHelper.Field$System.Guid.string$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :115 :12) {
^entry (%_dtoGuid : none, %_propertyName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :115 :45)
cbde.store %_dtoGuid, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :115 :45)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :115 :59)
cbde.store %_propertyName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :115 :59)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :117 :16) // Not a variable of known type: alertFields
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :117 :32) // new AlertField                  {                      DtoGuid = dtoGuid,                      PropertyInfo = parent.Item.GetType().GetProperty(propertyName)                  } (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :119 :30) // Not a variable of known type: dtoGuid
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :120 :35) // Not a variable of known type: parent
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :120 :35) // parent.Item (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :120 :35) // parent.Item.GetType() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :120 :69) // Not a variable of known type: propertyName
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :120 :35) // parent.Item.GetType().GetProperty(propertyName) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :117 :16) // alertFields.Add(new AlertField                  {                      DtoGuid = dtoGuid,                      PropertyInfo = parent.Item.GetType().GetProperty(propertyName)                  }) (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :122 :23) // this (ThisExpression)
return %11 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :122 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.IssueHelper.Field$T$$T.string.string$(none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :124 :12) {
^entry (%_item : none, %_propertyName : none, %_idName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :124 :48)
cbde.store %_item, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :124 :48)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :124 :56)
cbde.store %_propertyName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :124 :56)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :124 :77)
cbde.store %_idName, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :124 :77)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :126 :16) // Not a variable of known type: alertFields
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :126 :32) // new AlertField                  {                        DtoGuid = (Guid)(typeof(T).GetProperty(idName).GetValue(item)),                      PropertyInfo = typeof(T).GetProperty(propertyName)                  } (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :129 :37) // typeof(T) (TypeOfExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :129 :59) // Not a variable of known type: idName
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :129 :37) // typeof(T).GetProperty(idName) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :129 :76) // Not a variable of known type: item
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :129 :37) // typeof(T).GetProperty(idName).GetValue(item) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :129 :30) // (Guid)(typeof(T).GetProperty(idName).GetValue(item)) (CastExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :130 :35) // typeof(T) (TypeOfExpression)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :130 :57) // Not a variable of known type: propertyName
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :130 :35) // typeof(T).GetProperty(propertyName) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :126 :16) // alertFields.Add(new AlertField                  {                        DtoGuid = (Guid)(typeof(T).GetProperty(idName).GetValue(item)),                      PropertyInfo = typeof(T).GetProperty(propertyName)                  }) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :132 :23) // this (ThisExpression)
return %15 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :132 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.IssueHelper.Field$string.string$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :137 :12) {
^entry (%_propertyName : none, %_idName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :137 :45)
cbde.store %_propertyName, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :137 :45)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :137 :66)
cbde.store %_idName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :137 :66)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :139 :16) // Not a variable of known type: alertFields
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :139 :32) // new AlertField                  {                        DtoGuid = (Guid)(parent.Item.GetType().GetProperty(idName).GetValue(parent.Item)),                      PropertyInfo = parent.Item.GetType().GetProperty(propertyName)                  } (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :142 :37) // Not a variable of known type: parent
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :142 :37) // parent.Item (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :142 :37) // parent.Item.GetType() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :142 :71) // Not a variable of known type: idName
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :142 :37) // parent.Item.GetType().GetProperty(idName) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :142 :88) // Not a variable of known type: parent
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :142 :88) // parent.Item (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :142 :37) // parent.Item.GetType().GetProperty(idName).GetValue(parent.Item) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :142 :30) // (Guid)(parent.Item.GetType().GetProperty(idName).GetValue(parent.Item)) (CastExpression)
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :143 :35) // Not a variable of known type: parent
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :143 :35) // parent.Item (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :143 :35) // parent.Item.GetType() (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :143 :69) // Not a variable of known type: propertyName
%17 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :143 :35) // parent.Item.GetType().GetProperty(propertyName) (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :139 :16) // alertFields.Add(new AlertField                  {                        DtoGuid = (Guid)(parent.Item.GetType().GetProperty(idName).GetValue(parent.Item)),                      PropertyInfo = parent.Item.GetType().GetProperty(propertyName)                  }) (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :145 :23) // this (ThisExpression)
return %19 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :145 :16)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.RepoLendImport.Services.AbstractRepoLendChecker.IssueHelper.addToAlerts$$() -> i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :148 :12) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :150 :21) // Not a variable of known type: predicate
%1 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :150 :20) // !predicate (LogicalNotExpression)
cond_br %1, ^1, ^2 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :150 :20)

^1: // JumpBlock
%2 = constant 0 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :150 :39) // false
return %2 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :150 :32)

^2: // BinaryBranchBlock
// Entity from another assembly: DataImportAlert
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :153 :20) // Not a variable of known type: level
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :154 :20) // Not a variable of known type: message
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :152 :40) // DataImportAlert.GetInstance<RepoLendDto>(                      level,                      message) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :156 :20) // Not a variable of known type: level
// Entity from another assembly: AlertLevel
%8 = constant unit loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :156 :29) // AlertLevel.Fehler (SimpleMemberAccessExpression)
%9 = cbde.unknown : i1  loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :156 :20) // comparison of unknown type: level == AlertLevel.Fehler
cond_br %9, ^3, ^4 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :156 :20)

^3: // SimpleBlock
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :157 :20) // Not a variable of known type: parent
%11 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :157 :20) // parent.ErrorDetected (SimpleMemberAccessExpression)
%12 = constant 1 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :157 :43) // true
br ^4

^4: // JumpBlock
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :158 :16) // Not a variable of known type: alert
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :158 :16) // alert.AlertFields (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :158 :43) // Not a variable of known type: alertFields
%16 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :158 :16) // alert.AlertFields.AddRange(alertFields) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :159 :15) // Not a variable of known type: parent
%18 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :159 :15) // parent.AlertList (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :159 :36) // Not a variable of known type: alert
%20 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :159 :15) // parent.AlertList.Add(alert) (InvocationExpression)
%21 = constant 1 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :160 :22) // true
return %21 : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\RepoLendImport\\Services\\AbstractRepoLendChecker.cs" :160 :15)

^5: // ExitBlock
cbde.unreachable

}
