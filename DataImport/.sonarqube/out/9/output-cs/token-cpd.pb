∂
éC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\AbstractServices\IBusinessRulesCheckService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
AbstractServices8 H
{ 
public 

	interface &
IBusinessRulesCheckService /
</ 0
in0 2
P3 4
>4 5
{ 
void		 
Check		 
(		 
P		 
p		 
)		 
;		 
}

 
} ‘
ÖC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\AbstractServices\ITransformService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
AbstractServices8 H
{ 
public 

	interface 
ITransformService &
<& '
in' )
P* +
,+ ,
out- 0
R1 2
>2 3
{		 
R

 	
	Transform


 
(

 
P

 
p

 
)

 
;

 
} 
} ß
ÅC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\Exceptions\DataImportException.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8

Exceptions8 B
{ 
public 

class 
DataImportException $
:% &
	Exception' 0
{ 
public 
DataImportException "
(" #
)# $
{		 	
}

 	
public 
DataImportException "
(" #
string# )
message* 1
)1 2
:3 4
base5 9
(9 :
message: A
)A B
{ 	
} 	
public 
DataImportException "
(" #
string# )
message* 1
,1 2
	Exception3 <
innerException= K
)K L
:M N
baseO S
(S T
messageT [
,[ \
innerException] k
)k l
{ 	
} 	
	protected 
DataImportException %
(% &
SerializationInfo& 7
info8 <
,< =
StreamingContext> N
contextO V
)V W
:X Y
baseZ ^
(^ _
info_ c
,c d
contexte l
)l m
{ 	
} 	
} 
} ù
áC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\FileHandling\DataImportConfiguration.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
FileHandling8 D
{ 
public 

class #
DataImportConfiguration (
:) *$
IDataImportConfiguration+ C
{ 
public		 #
DataImportConfiguration		 &
(		& '
)		' (
{

 	

Dictionary 
. 
Add 
( 
new 
Tuple $
<$ %
string% +
,+ ,
string- 3
>3 4
(4 5
$str5 ?
,? @
$strA G
)G H
,H I
$str	 †
)
† °
;
° ¢

Dictionary 
. 
Add 
( 
new 
Tuple $
<$ %
string% +
,+ ,
string- 3
>3 4
(4 5
$str5 ?
,? @
$strA Q
)Q R
,R S
$str 9
)9 :
;: ;
} 	
private 
IDictionary 
< 
Tuple !
<! "
string" (
,( )
string* 0
>0 1
,1 2
string3 9
>9 :

Dictionary; E
{F G
getH K
;K L
}M N
= 
new 

Dictionary 
< 
Tuple "
<" #
string# )
,) *
string+ 1
>1 2
,2 3
string4 :
>: ;
(; <
)< =
;= >
public 
string 
GetValue 
( 
string %
useCase& -
,- .
string/ 5
	parameter6 ?
)? @
{ 	
if 
( 

Dictionary 
. 
TryGetValue &
(& '
new' *
Tuple+ 0
<0 1
string1 7
,7 8
string9 ?
>? @
(@ A
useCaseA H
,H I
	parameterJ S
)S T
,T U
outV Y
varZ ]
retval^ d
)d e
)e f
return 
retval 
; 
throw 
new 
DataImportException )
() *
$" 5
)Kein Konfigurationseintrag f√ºr Use Case  :
{: ;
useCase; B
}B C
 und Parameter C R
{R S
	parameterS \
}\ ]

 gefunden.] g
"g h
)h i
;i j
} 	
} 
} ∑
àC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\FileHandling\IDataImportConfiguration.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
FileHandling8 D
{ 
public 

	interface $
IDataImportConfiguration -
{ 
string 
GetValue 
( 
string 
useCase &
,& '
string( .
	parameter/ 8
)8 9
;9 :
} 
} ∂
ÜC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\FileHandling\IInitImportFileService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
FileHandling8 D
{ 
public 

	interface "
IInitImportFileService +
{ 
IList		 
<		 
FileInfo		 
>		 
GetFiles		  
(		  !
DateTime		! )
betrachtungstag		* 9
)		9 :
;		: ;
}

 
} ¡
ÖC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\FileHandling\InitImportFileService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
FileHandling8 D
{		 
public

 

class

 !
InitImportFileService

 &
:

' ("
IInitImportFileService

) ?
{ 
	protected 
readonly $
IDataImportConfiguration 3
config4 :
;: ;
	protected 
readonly 
string !
useCase" )
;) *
public !
InitImportFileService $
($ %$
IDataImportConfiguration% =
config> D
,D E
stringF L
useCaseM T
)T U
{ 	
this 
. 
config 
= 
config  
;  !
this 
. 
useCase 
= 
useCase "
;" #
} 	
public 
IList 
< 
FileInfo 
> 
GetFiles '
(' (
DateTime( 0
betrachtungstag1 @
)@ A
{ 	
var 
dir 
= 
new 
DirectoryInfo '
(' (
config( .
.. /
GetValue/ 7
(7 8
useCase8 ?
,? @
$strA G
)G H
)H I
;I J
if 
( 
! 
dir 
. 
Exists 
) 
throw "
new# &
DataImportException' :
(: ;
$"; =
Verzeichnis = I
{I J
dirJ M
.M N
FullNameN V
}V W
 existiert nicht.W h
"h i
)i j
;j k
var 
files 
= 
dir 
. 
EnumerateFiles *
(* +
)+ ,
., -
ToList- 3
(3 4
)4 5
;5 6
var 
fileNamePattern 
=  !
string" (
.( )
Format) /
(/ 0
config0 6
.6 7
GetValue7 ?
(? @
useCase@ G
,G H
$strI Y
)Y Z
,Z [
betrachtungstag\ k
)k l
;l m
return 
files 
. 
FindAll  
(  !
file! %
=>& (
Regex) .
.. /
IsMatch/ 6
(6 7
file7 ;
.; <
Name< @
,@ A
fileNamePatternB Q
)Q R
)R S
;S T
} 	
} 
} Ë
xC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\Job\AlertGeneratorJob.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
Job8 ;
{ 
public 

class 
AlertGeneratorJob "
:# $
AbstractJob% 0
,0 1
IAlertGenerator2 A
{		 
private

 
readonly

 
List

 
<

 
DataImportAlert

 -
>

- .
alerts

/ 5
=

6 7
new

8 ;
List

< @
<

@ A
DataImportAlert

A P
>

P Q
(

Q R
)

R S
;

S T
public 
IList 
< 
DataImportAlert $
>$ %
	GetAlerts& /
(/ 0
)0 1
{ 	
return 
alerts 
; 
} 	
public 
override 
void 
RunAllSteps (
(( )
)) *
{ 	
foreach 
( 
var 
step 
in  
_steps! '
)' (
try 
{ 
step 
. 
Init 
( 
) 
;  
step 
. 
Execute  
(  !
)! "
;" #
} 
catch 
( 
DataImportException *
e+ ,
), -
{ 
throw 
new 
DataImportException 1
(1 2
$"2 4
Durchgereicht von 4 F
{F G
stepG K
.K L
GetTypeL S
(S T
)T U
.U V
NameV Z
}Z [
: [ ]
"] ^
+_ `
ea b
.b c
Messagec j
)j k
;k l
} 
finally 
{ 
if 
( 
step 
is 
IAlertGenerator  /
)/ 0
alerts1 7
.7 8
AddRange8 @
(@ A
(A B
(B C
IAlertGeneratorC R
)R S
stepT X
)X Y
.Y Z
	GetAlertsZ c
(c d
)d e
)e f
;f g
step   
.   
Dispose    
(    !
)  ! "
;  " #
}!! 
}"" 	
}## 
}$$ –"
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\Step\CheckTransformProcessor.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
Step8 <
{ 
public 

class #
CheckTransformProcessor (
<( )
P) *
,* +
R, -
>- .
:/ 0 
IDataImportProcessor1 E
<E F
PF G
,G H
RI J
>J K
{ 
	protected 
readonly 
List 
<  
DataImportAlert  /
>/ 0
alerts1 7
=8 9
new: =
List> B
<B C
DataImportAlertC R
>R S
(S T
)T U
;U V
public #
CheckTransformProcessor &
(& '
IList 
< &
IBusinessRulesCheckService ,
<, -
P- .
>. /
>/ 0
preCheckServices1 A
,A B
ITransformService 
< 
P 
,  
R! "
>" #
transformService$ 4
,4 5
IList 
< &
IBusinessRulesCheckService ,
<, -
R- .
>. /
>/ 0
postCheckServices1 B
) 	
{ 	
this 
. 
preCheckServices !
=" #
preCheckServices$ 4
??5 7
new8 ;
List< @
<@ A&
IBusinessRulesCheckServiceA [
<[ \
P\ ]
>] ^
>^ _
(_ `
)` a
;a b
this 
. 
transformService !
=" #
transformService$ 4
;4 5
this 
. 
postCheckServices "
=# $
postCheckServices% 6
??7 9
new: =
List> B
<B C&
IBusinessRulesCheckServiceC ]
<] ^
R^ _
>_ `
>` a
(a b
)b c
;c d
} 	
public!! #
CheckTransformProcessor!! &
(!!& '
)"" 	
{## 	
}$$ 	
	protected&& 
IList&& 
<&& &
IBusinessRulesCheckService&& 2
<&&2 3
P&&3 4
>&&4 5
>&&5 6
preCheckServices&&7 G
{&&H I
get&&J M
;&&M N
set&&O R
;&&R S
}&&T U
	protected'' 
ITransformService'' #
<''# $
P''$ %
,''% &
R''' (
>''( )
transformService''* :
{''; <
get''= @
;''@ A
set''B E
;''E F
}''G H
	protected(( 
IList(( 
<(( &
IBusinessRulesCheckService(( 2
<((2 3
R((3 4
>((4 5
>((5 6
postCheckServices((7 H
{((I J
get((K N
;((N O
set((P S
;((S T
}((U V
public++ 
IList++ 
<++ 
DataImportAlert++ $
>++$ %
	GetAlerts++& /
(++/ 0
)++0 1
{,, 	
return-- 
alerts-- 
;-- 
}.. 	
public00 
R00 
Process00 
(00 
P00 
p00 
)00 
{11 	
foreach22 
(22 
var22 
checkService22 %
in22& (
preCheckServices22) 9
)229 :
checkService22; G
.22G H
Check22H M
(22M N
p22N O
)22O P
;22P Q
var33 
retval33 
=33 
transformService33 )
.33) *
	Transform33* 3
(333 4
p334 5
)335 6
;336 7
foreach44 
(44 
var44 
checkService44 %
in44& (
postCheckServices44) :
)44: ;
checkService44< H
.44H I
Check44I N
(44N O
retval44O U
)44U V
;44V W
return55 
retval55 
;55 
}66 	
}77 
}88 ≈,
vC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\Step\DataImportStep.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
Step8 <
{ 
public		 

class		 
DataImportStep		 
<		  
R		  !
,		! "
W		# $
>		$ %
:		& '
AbstractStep		( 4
,		4 5
IAlertGenerator		6 E
{

 
	protected 
IList 
< 
DataImportAlert '
>' (
alerts) /
;/ 0
public 
DataImportStep 
( 
string $
useCase% ,
,, -
DateTime. 6
betrachtungstag7 F
)F G
{ 	
UseCase 
= 
useCase 
; 
Betrachtungstag 
= 
betrachtungstag -
;- .
} 	
private 
string 
UseCase 
{  
get! $
;$ %
}& '
private 
DateTime 
Betrachtungstag (
{) *
get+ .
;. /
}0 1
private 
IReader 
< 
R 
> 
Reader !
{" #
get$ '
;' (
set) ,
;, -
}. /
private  
IDataImportProcessor $
<$ %
R% &
,& '
W( )
>) *
	Processor+ 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
private 
IWriter 
< 
IList 
< 
DataImportAlert -
>- .
>. /
AlertsWriter0 <
{= >
get? B
;B C
setD G
;G H
}I J
private 
IWriter 
< 
W 
> 
Writer !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
IList 
< 
DataImportAlert $
>$ %
	GetAlerts& /
(/ 0
)0 1
{ 	
return 
alerts 
?? 
new  
List! %
<% &
DataImportAlert& 5
>5 6
(6 7
)7 8
;8 9
} 	
public 
DataImportStep 
< 
R 
,  
W! "
>" #

InitReader$ .
(. /
IReader/ 6
<6 7
R7 8
>8 9
reader: @
)@ A
{   	
Reader!! 
=!! 
reader!! 
;!! 
return"" 
this"" 
;"" 
}## 	
public%% 
DataImportStep%% 
<%% 
R%% 
,%%  
W%%! "
>%%" #
InitProcessor%%$ 1
(%%1 2 
IDataImportProcessor%%2 F
<%%F G
R%%G H
,%%H I
W%%J K
>%%K L
	processor%%M V
)%%V W
{&& 	
	Processor'' 
='' 
	processor'' !
;''! "
return(( 
this(( 
;(( 
})) 	
public++ 
DataImportStep++ 
<++ 
R++ 
,++  
W++! "
>++" #

InitWriter++$ .
(++. /
IWriter++/ 6
<++6 7
W++7 8
>++8 9
writer++: @
)++@ A
{,, 	
Writer-- 
=-- 
writer-- 
;-- 
return.. 
this.. 
;.. 
}// 	
public11 
DataImportStep11 
<11 
R11 
,11  
W11! "
>11" #
InitAlertsWriter11$ 4
(114 5
IWriter115 <
<11< =
IList11= B
<11B C
DataImportAlert11C R
>11R S
>11S T
alertsWriter11U a
)11a b
{22 	
AlertsWriter33 
=33 
alertsWriter33 '
;33' (
return44 
this44 
;44 
}55 	
public77 
override77 
void77 
Execute77 $
(77$ %
)77% &
{88 	
var99 
processResult99 
=99 
	Processor99  )
.99) *
Process99* 1
(991 2
Reader992 8
.998 9
Read999 =
(99= >
)99> ?
)99? @
;99@ A
alerts:: 
=:: 
	Processor:: 
.:: 
	GetAlerts:: (
(::( )
)::) *
;::* +
if;; 
(;; 
processResult;; 
==;;  
null;;! %
);;% &
{<< 
AlertsWriter== 
?== 
.== 
Write== #
(==# $
alerts==$ *
)==* +
;==+ ,
throw>> 
new>> 
DataImportException>> -
(>>- .
$str>>. R
)>>R S
;>>S T
}?? 
AlertsWriterAA 
?AA 
.AA 
WriteAA 
(AA  
alertsAA  &
)AA& '
;AA' (
WriterBB 
.BB 
WriteBB 
(BB 
processResultBB &
)BB& '
;BB' (
}CC 	
}DD 
}EE Õ
|C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\Step\IDataImportProcessor.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
Step8 <
{ 
public 

	interface  
IDataImportProcessor )
<) *
P* +
,+ ,
R- .
>. /
:0 1

IProcessor2 <
<< =
P= >
,> ?
R@ A
>A B
,B C
IAlertGeneratorD S
{ 
} 
}		 ∞	
ÉC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericBusinessLogic\Step\IdentityDataImportProcessor.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." # 
GenericBusinessLogic# 7
.7 8
Step8 <
{ 
public

 

class

 '
IdentityDataImportProcessor

 ,
<

, -
T

- .
>

. /
:

0 1 
IDataImportProcessor

2 F
<

F G
T

G H
,

H I
T

J K
>

K L
{ 
public 
IList 
< 
DataImportAlert $
>$ %
	GetAlerts& /
(/ 0
)0 1
{ 	
return 
new 
List 
< 
DataImportAlert +
>+ ,
(, -
)- .
;. /
} 	
public 
T 
Process 
( 
T 
p 
) 
{ 	
return 
p 
; 
} 	
} 
} 