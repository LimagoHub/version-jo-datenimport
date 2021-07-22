func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.ReaderProcessorWriter$R.W$.InitReader$BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.IReader$R$$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :8 :8) {
^entry (%_reader : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :8 :54)
cbde.store %_reader, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :8 :54)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :10 :21) // Not a variable of known type: reader
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :11 :19) // this (ThisExpression)
return %2 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :11 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.ReaderProcessorWriter$R.W$.InitProcessor$BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.IProcessor$R.W$$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :14 :8) {
^entry (%_processor : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :14 :57)
cbde.store %_processor, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :14 :57)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :16 :24) // Not a variable of known type: processor
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :17 :19) // this (ThisExpression)
return %2 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :17 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.ReaderProcessorWriter$R.W$.InitWriter$BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.IWriter$W$$(none) -> none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :20 :8) {
^entry (%_writer : none):
%0 = cbde.alloca none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :20 :54)
cbde.store %_writer, %0 : memref<none> loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :20 :54)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :22 :21) // Not a variable of known type: writer
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :23 :19) // this (ThisExpression)
return %2 : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_BBk.Rc1.Ricis.SharedLibraries.BatchProcessing.Step.ReaderProcessorWriter$R.W$.Execute$$() -> () loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :26 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :28 :12) // Not a variable of known type: Writer
%1 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :28 :25) // Not a variable of known type: Processor
%2 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :28 :43) // Not a variable of known type: Reader
%3 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :28 :43) // Reader.Read() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :28 :25) // Processor.Process(Reader.Read()) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\JoachimWagner\\Documents\\Projekte\\Bundesbank\\SpielWiese\\DataImport\\BatchProcessing\\Step\\ReaderProcessorWriter.cs" :28 :12) // Writer.Write(Processor.Process(Reader.Read())) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
