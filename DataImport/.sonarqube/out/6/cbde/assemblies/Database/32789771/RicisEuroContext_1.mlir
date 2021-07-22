func @_BBk.Rc1.Ricis.Database.Contexts.RicisEuroContext.OnConfiguring$Microsoft.EntityFrameworkCore.DbContextOptionsBuilder$(none) -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :55 :8) {
^entry (%_optionsBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :55 :46)
cbde.store %_optionsBuilder, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :55 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :57 :17) // Not a variable of known type: optionsBuilder
%2 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :57 :17) // optionsBuilder.IsConfigured (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :57 :16) // !optionsBuilder.IsConfigured (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :57 :16)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :60 :16) // Not a variable of known type: optionsBuilder
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :60 :44) // "Server=m999ricis002d;Database=AstericsTest02;Trusted_Connection=True;" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\Database\\Contetxts\\RicisEuroContext.cs" :60 :16) // optionsBuilder.UseSqlServer("Server=m999ricis002d;Database=AstericsTest02;Trusted_Connection=True;") (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function OnModelCreating(none), it contains poisonous unsupported syntaxes

