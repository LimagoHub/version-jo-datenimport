func @_BBk.Rc1.Ricis.DataImport.DocumentsDatabase.Step.JsonDtosReader$DTO$.Read$$() -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :16 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :18 :29) // Not a variable of known type: finder
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :18 :56) // Not a variable of known type: finder
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :18 :56) // finder.GetLatestArchivedFile() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :18 :56) // finder.GetLatestArchivedFile().Guid (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :18 :29) // finder.GetLatestJsonByGuid(finder.GetLatestArchivedFile().Guid) (InvocationExpression)
// Entity from another assembly: JsonConvert
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :21 :61) // Not a variable of known type: latestJson
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :21 :61) // latestJson.JsonDtos (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :21 :19) // JsonConvert.DeserializeObject<IList<DTO>>(latestJson.JsonDtos) (InvocationExpression)
return %8 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\DocumentsDatabase\\Step\\JsonDtosReader.cs" :21 :12)

^1: // ExitBlock
cbde.unreachable

}
