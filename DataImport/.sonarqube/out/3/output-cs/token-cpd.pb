…
}C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\InterestCalculation\IInterestCalculationService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' (
InterestCalculation( ;
{ 
public 

	interface '
IInterestCalculationService 0
{		 
decimal 
CalcSimpleInterest "
(" #
DateTime# +
from, 0
,0 1
DateTime2 :
to; =
,= >
decimal? F
interestRateG S
,S T
stringU [
dayCount\ d
)d e
;e f
} 
} ž

C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\InterestCalculation\InterestCalculationServiceDummy.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' (
InterestCalculation( ;
{ 
public 

class +
InterestCalculationServiceDummy 0
:1 2'
IInterestCalculationService3 N
{ 
public 
decimal 
CalcSimpleInterest )
() *
DateTime* 2
from3 7
,7 8
DateTime9 A
toB D
,D E
decimalF M
interestRateN Z
,Z [
string\ b
dayCountc k
)k l
{ 	
if		 
(		 
dayCount		 
==		 
$str		 %
)		% &
return

 
(

 
to

 
-

 
from

 !
)

! "
.

" #
Days

# '
/

( )
$num

* .
*

/ 0
interestRate

1 =
;

= >
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} 