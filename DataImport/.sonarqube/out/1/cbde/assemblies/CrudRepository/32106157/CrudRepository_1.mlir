func @_BBk.Rc1.Ricis.SharedLibraries.CrudRepository.CrudRepository$E$.GetAll$$() -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :18 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :20 :19) // Not a variable of known type: _table
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :20 :19) // _table.ToList() (InvocationExpression)
return %1 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.CrudRepository.CrudRepository$E$.GetById$paramsobject$$$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :23 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :23 :25)
cbde.store %_id, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :23 :25)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :25 :19) // Not a variable of known type: _table
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :25 :31) // Not a variable of known type: id
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :25 :19) // _table.Find(id) (InvocationExpression)
return %3 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.CrudRepository.CrudRepository$E$.Insert$E$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :28 :8) {
^entry (%_obj : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :28 :27)
cbde.store %_obj, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :28 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :30 :12) // Not a variable of known type: _table
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :30 :23) // Not a variable of known type: obj
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :30 :12) // _table.Add(obj) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.SharedLibraries.CrudRepository.CrudRepository$E$.Update$E$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :33 :8) {
^entry (%_obj : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :33 :27)
cbde.store %_obj, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :33 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :35 :12) // Not a variable of known type: _table
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :35 :26) // Not a variable of known type: obj
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :35 :12) // _table.Attach(obj) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :36 :12) // Not a variable of known type: _context
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :36 :27) // Not a variable of known type: obj
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :36 :12) // _context.Entry(obj) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :36 :12) // _context.Entry(obj).State (SimpleMemberAccessExpression)
// Entity from another assembly: EntityState
%8 = constant unit loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :36 :40) // EntityState.Modified (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.SharedLibraries.CrudRepository.CrudRepository$E$.Update$E.paramsobject$$$(none, none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :41 :8) {
^entry (%_obj : none, %_id : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :41 :27)
cbde.store %_obj, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :41 :27)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :41 :34)
cbde.store %_id, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :41 :34)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :43 :24) // Not a variable of known type: _table
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :43 :36) // Not a variable of known type: id
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :43 :24) // _table.Find(id) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :44 :12) // Not a variable of known type: _context
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :44 :27) // Not a variable of known type: exist
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :44 :12) // _context.Entry(exist) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :44 :12) // _context.Entry(exist).CurrentValues (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :44 :58) // Not a variable of known type: obj
%11 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :44 :12) // _context.Entry(exist).CurrentValues.SetValues(obj) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.SharedLibraries.CrudRepository.CrudRepository$E$.Delete$paramsobject$$$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :47 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :47 :27)
cbde.store %_id, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :47 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :49 :27) // Not a variable of known type: _table
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :49 :39) // Not a variable of known type: id
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :49 :27) // _table.Find(id) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :50 :12) // Not a variable of known type: _table
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :50 :26) // Not a variable of known type: existing
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :50 :12) // _table.Remove(existing) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.SharedLibraries.CrudRepository.CrudRepository$E$.DeleteAll$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :53 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :56 :12) // Not a variable of known type: _table
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetAll
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :56 :31) // GetAll() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :56 :12) // _table.RemoveRange(GetAll()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_BBk.Rc1.Ricis.SharedLibraries.CrudRepository.CrudRepository$E$.Save$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :59 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :61 :12) // Not a variable of known type: _context
%1 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\CrudRepository\\CrudRepository.cs" :61 :12) // _context.SaveChanges() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
