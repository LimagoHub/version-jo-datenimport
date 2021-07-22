func @_BBk.Rc1.Ricis.SharedLibraries.InterestCalculation.InterestCalculationServiceDummy.CalcSimpleInterest$System.DateTime.System.DateTime.decimal.string$(none, none, none, none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :6 :8) {
^entry (%_from : none, %_to : none, %_interestRate : none, %_dayCount : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :6 :42)
cbde.store %_from, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :6 :42)
%1 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :6 :57)
cbde.store %_to, %1 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :6 :57)
%2 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :6 :70)
cbde.store %_interestRate, %2 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :6 :70)
%3 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :6 :92)
cbde.store %_dayCount, %3 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :6 :92)
br ^0

^0: // BinaryBranchBlock
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :8 :16) // Not a variable of known type: dayCount
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :8 :28) // "act/360" (StringLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :8 :16) // comparison of unknown type: dayCount == "act/360"
cond_br %6, ^1, ^2 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :8 :16)

^1: // JumpBlock
%7 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :9 :24) // Not a variable of known type: to
%8 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :9 :29) // Not a variable of known type: from
%9 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :9 :24) // Binary expression on unsupported types to - from
%10 = cbde.unknown : i32 loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :9 :23) // (to - from).Days (SimpleMemberAccessExpression)
%11 = constant unit loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :9 :42) // 360M (NumericLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :9 :23) // Binary expression on unsupported types (to - from).Days / 360M
%13 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :9 :49) // Not a variable of known type: interestRate
%14 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :9 :23) // Binary expression on unsupported types (to - from).Days / 360M * interestRate
return %14 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :9 :16)

^2: // JumpBlock
%15 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :10 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %15 :  none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\InterestCalculation\\InterestCalculationServiceDummy.cs" :10 :12)

^3: // ExitBlock
cbde.unreachable

}
