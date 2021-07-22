func @_BBk.Rc1.Ricis.DataImport.Alerts.DataImportAlert.GetInstance$DTO$$BBk.Rc1.Ricis.DataImport.Alerts.AlertLevel.string$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :46 :8) {
^entry (%_level : none, %_message : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :46 :55)
cbde.store %_level, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :46 :55)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :46 :73)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :46 :73)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetInstance
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :48 :31) // Not a variable of known type: level
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :48 :38) // Not a variable of known type: message
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :48 :47) // typeof(DTO) (TypeOfExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :48 :19) // GetInstance(level, message, typeof(DTO)) (InvocationExpression)
return %5 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :48 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.Alerts.DataImportAlert.GetInstance$BBk.Rc1.Ricis.DataImport.Alerts.AlertLevel.string.System.Type$(none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :51 :8) {
^entry (%_level : none, %_message : none, %_type : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :51 :50)
cbde.store %_level, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :51 :50)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :51 :68)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :51 :68)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :51 :84)
cbde.store %_type, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :51 :84)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :53 :19) // new DataImportAlert             {                 AlertId = Guid.NewGuid(),                 Level = level,                 DtoType = type,                 Time = DateTime.Now,                 Message = message             } (ObjectCreationExpression)
// Entity from another assembly: Guid
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :55 :26) // Guid.NewGuid() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :56 :24) // Not a variable of known type: level
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :57 :26) // Not a variable of known type: type
// Entity from another assembly: DateTime
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :58 :23) // DateTime.Now (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :59 :26) // Not a variable of known type: message
return %3 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :53 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.Alerts.DataImportAlert.AddAlertField$DTO$$System.Guid.string$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :70 :8) {
^entry (%_dtoGuid : none, %_propertyName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :70 :50)
cbde.store %_dtoGuid, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :70 :50)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :70 :64)
cbde.store %_propertyName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :70 :64)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :72 :12) // Not a variable of known type: AlertFields
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :72 :28) // new AlertField             {                 DtoGuid = dtoGuid,                 PropertyInfo = typeof(DTO).GetProperty(propertyName)             } (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :74 :26) // Not a variable of known type: dtoGuid
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :75 :31) // typeof(DTO) (TypeOfExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :75 :55) // Not a variable of known type: propertyName
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :75 :31) // typeof(DTO).GetProperty(propertyName) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :72 :12) // AlertFields.Add(new AlertField             {                 DtoGuid = dtoGuid,                 PropertyInfo = typeof(DTO).GetProperty(propertyName)             }) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :77 :19) // this (ThisExpression)
return %9 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :77 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.Alerts.DataImportAlert.AddAlertField$System.Guid.string.System.Type$(none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :80 :8) {
^entry (%_dtoGuid : none, %_propertyName : none, %_type : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :80 :45)
cbde.store %_dtoGuid, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :80 :45)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :80 :59)
cbde.store %_propertyName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :80 :59)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :80 :80)
cbde.store %_type, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :80 :80)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :82 :12) // Not a variable of known type: AlertFields
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :82 :28) // new AlertField             {                 DtoGuid = dtoGuid,                 PropertyInfo = type.GetProperty(propertyName)             } (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :84 :26) // Not a variable of known type: dtoGuid
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :85 :31) // Not a variable of known type: type
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :85 :48) // Not a variable of known type: propertyName
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :85 :31) // type.GetProperty(propertyName) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :82 :12) // AlertFields.Add(new AlertField             {                 DtoGuid = dtoGuid,                 PropertyInfo = type.GetProperty(propertyName)             }) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :87 :19) // this (ThisExpression)
return %10 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :87 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.Alerts.DataImportAlert.AddAlertField$System.Guid.string$(none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :90 :8) {
^entry (%_dtoGuid : none, %_propertyName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :90 :45)
cbde.store %_dtoGuid, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :90 :45)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :90 :59)
cbde.store %_propertyName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :90 :59)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :92 :12) // Not a variable of known type: AlertFields
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :92 :28) // new AlertField             {                 DtoGuid = dtoGuid,                 PropertyInfo = DtoType.GetProperty(propertyName)             } (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :94 :26) // Not a variable of known type: dtoGuid
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :95 :31) // Not a variable of known type: DtoType
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :95 :51) // Not a variable of known type: propertyName
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :95 :31) // DtoType.GetProperty(propertyName) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :92 :12) // AlertFields.Add(new AlertField             {                 DtoGuid = dtoGuid,                 PropertyInfo = DtoType.GetProperty(propertyName)             }) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :97 :19) // this (ThisExpression)
return %9 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :97 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.DataImport.Alerts.DataImportAlert.AddAlertField$T$$T.string.string$(none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :100 :8) {
^entry (%_item : none, %_propertyName : none, %_idName : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :100 :48)
cbde.store %_item, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :100 :48)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :100 :56)
cbde.store %_propertyName, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :100 :56)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :100 :77)
cbde.store %_idName, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :100 :77)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :102 :12) // Not a variable of known type: AlertFields
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :102 :28) // new AlertField             {                 DtoGuid = (Guid) typeof(T).GetProperty(idName).GetValue(item),                 PropertyInfo = typeof(T).GetProperty(propertyName)             } (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :104 :33) // typeof(T) (TypeOfExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :104 :55) // Not a variable of known type: idName
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :104 :33) // typeof(T).GetProperty(idName) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :104 :72) // Not a variable of known type: item
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :104 :33) // typeof(T).GetProperty(idName).GetValue(item) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :104 :26) // (Guid) typeof(T).GetProperty(idName).GetValue(item) (CastExpression)
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :105 :31) // typeof(T) (TypeOfExpression)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :105 :53) // Not a variable of known type: propertyName
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :105 :31) // typeof(T).GetProperty(propertyName) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :102 :12) // AlertFields.Add(new AlertField             {                 DtoGuid = (Guid) typeof(T).GetProperty(idName).GetValue(item),                 PropertyInfo = typeof(T).GetProperty(propertyName)             }) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :107 :19) // this (ThisExpression)
return %15 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Alerts\\DataImportAlert.cs" :107 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function ToString(), it contains poisonous unsupported syntaxes

