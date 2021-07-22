·
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Job\RepoLendImportAfterUserEditJob.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Job2 5
{ 
public 

class *
RepoLendImportAfterUserEditJob /
:0 1
AlertGeneratorJob2 C
{ 
private		 *
RepoLendImportAfterUserEditJob		 .
(		. /
)		/ 0
{

 	
} 	
public 
static *
RepoLendImportAfterUserEditJob 4
GetInstance5 @
(@ A
stringA G
useCaseRepoLendH W
,W X
DateTimeY a
betrachtungstagb q
)q r
{ 	
var 
job 
= 
new *
RepoLendImportAfterUserEditJob 8
(8 9
)9 :
;: ;
job 
. 
AddStep 
( B
6RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep N
. 
GetInstance 
( 
useCaseRepoLend ,
,, -
betrachtungstag. =
)= >
)> ?
;? @
job 
. 
AddStep 
( =
1RepoLendImportFromJsonEntitiesToRicisDatabaseStep I
. 
GetInstance 
( 
useCaseRepoLend ,
,, -
betrachtungstag. =
)= >
)> ?
;? @
return 
job 
; 
} 	
} 
} ¢
}C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Job\RepoLendImportAfterUserOkJob.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Job2 5
{ 
public 

class (
RepoLendImportAfterUserOkJob -
:. /
AlertGeneratorJob0 A
{ 
private		 (
RepoLendImportAfterUserOkJob		 ,
(		, -
)		- .
{

 	
} 	
public 
static (
RepoLendImportAfterUserOkJob 2
GetInstance3 >
(> ?
string? E
useCaseRepoLendF U
,U V
DateTimeW _
betrachtungstag` o
)o p
{ 	
var 
job 
= 
new (
RepoLendImportAfterUserOkJob 6
(6 7
)7 8
;8 9
job 
. 
AddStep 
( =
1RepoLendImportFromJsonEntitiesToRicisDatabaseStep I
. 
GetInstance 
( 
useCaseRepoLend ,
,, -
betrachtungstag. =
)= >
)> ?
;? @
return 
job 
; 
} 	
} 
} õ$
{C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Job\RepoLendImportAutomaticJob.cs
	namespace		 	
BBk		
 
.		 
Rc1		 
.		 
Ricis		 
.		 

DataImport		 "
.		" #
RepoLendImport		# 1
.		1 2
Job		2 5
{

 
public 

class &
RepoLendImportAutomaticJob +
:, -
AlertGeneratorJob. ?
{ 
private &
RepoLendImportAutomaticJob *
(* +
)+ ,
{ 	
} 	
public 
IList 
< 
FileInfo 
> 
ImportFileInfos .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
public 
static &
RepoLendImportAutomaticJob 0
GetInstance1 <
(< =
string= C
useCaseRepoLendD S
,S T
DateTimeU ]
betrachtungstag^ m
)m n
{ 	
if 
( 
new *
RepoLendCheckImportDateService 2
(2 3
)3 4
.4 5
IsDataInDatabase5 E
(E F
betrachtungstagF U
)U V
)V W
throw 
new 
DataImportException -
(- .
$" )
Bereits Daten zum Handelstag  3
{3 4
betrachtungstag4 C
:C D
dD E
}E F(
 in der Datenbank vorhanden.F b
"b c
)c d
;d e
var 
importFileInfos 
= )
RepoLendInitImportFileService /
./ 0
GetInstance0 ;
(; <
useCaseRepoLend< K
)K L
.L M
GetFilesM U
(U V
betrachtungstagV e
)e f
;f g
if 
( 
importFileInfos 
.  
Count  %
==& (
$num) *
)* +
throw 
new 
DataImportException -
(- .
$". 0(
Keine Importdatei zum Datum 0 L
{L M
betrachtungstagM \
:\ ]
d] ^
}^ _
 vorhanden._ j
"j k
)k l
;l m
if 
( 
importFileInfos 
.  
Count  %
>& '
$num( )
)) *
throw 
new 
DataImportException -
(- .
$". 00
$Mehr als eine Importdatei zum Datum 0 T
{T U
betrachtungstagU d
:d e
de f
}f g
 vorhanden.g r
"r s
)s t
;t u
var 
fileName 
= 
importFileInfos *
[* +
$num+ ,
], -
.- .
FullName. 6
;6 7
var 
job 
= 
new &
RepoLendImportAutomaticJob 4
{   
ImportFileInfos!! 
=!!  !
importFileInfos!!" 1
}"" 
;"" 
job## 
.## 
AddStep## 
(## 7
+RepoLendImportFromCsvFileToArchivedFileStep## C
.$$ 
GetInstance$$ 
($$ 
useCaseRepoLend$$ ,
,$$, -
betrachtungstag$$. =
,$$= >
fileName$$? G
)$$G H
)$$H I
;$$I J
job%% 
.%% 
AddStep%% 
(%% 8
,RepoLendImportFromArchivedFileToJsonDtosStep%% D
.&& 
GetInstance&& 
(&& 
useCaseRepoLend&& ,
,&&, -
betrachtungstag&&. =
)&&= >
)&&> ?
;&&? @
job'' 
.'' 
AddStep'' 
('' B
6RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep'' N
.(( 
GetInstance(( 
((( 
useCaseRepoLend(( ,
,((, -
betrachtungstag((. =
)((= >
)((> ?
;((? @
job)) 
.)) 
AddStep)) 
()) =
1RepoLendImportFromJsonEntitiesToRicisDatabaseStep)) I
.** 
GetInstance** 
(** 
useCaseRepoLend** ,
,**, -
betrachtungstag**. =
)**= >
)**> ?
;**? @
return++ 
job++ 
;++ 
},, 	
}-- 
}.. ˙
ÄC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Queries\IRepoLendConsistencyQueries.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Queries2 9
{ 
public 

	interface '
IRepoLendConsistencyQueries 0
{ 
TblRepoLend 
FindByRepoLendNo $
($ %
int% (

repoLendNo) 3
)3 4
;4 5
} 
}		 ≤
~C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Queries\IRepoLendTransformQueries.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Queries2 9
{ 
public 

	interface %
IRepoLendTransformQueries .
{ 
string 

GetFileKey 
( 
string  
fileType! )
,) *
string+ 1
keyName2 9
)9 :
;: ;
int 
? %
GetCounterpartFromMapping &
(& '
string' -
system. 4
,4 5
string6 <
key= @
)@ A
;A B
string *
GetPropertyValueByCounterparty -
(- .
int. 1
counterpartyNo2 @
,@ A
stringB H
propertyNameI U
)U V
;V W
int 
? !
GetPortfolioNoFromKey "
(" #
string# )
keyName* 1
,1 2
string3 9
keyValue: B
)B C
;C D
int		 
?		 !
GetInstrumentNoByIsin		 "
(		" #
string		# )
isin		* .
)		. /
;		/ 0
}

 
} ≈
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Queries\RepoLendConsistencyQueries.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Queries2 9
{ 
public		 

class		 &
RepoLendConsistencyQueries		 +
:		, -'
IRepoLendConsistencyQueries		. I
{

 
private 
readonly 
List 
< 
TblRepoLend )
>) *
tblRepoLends+ 7
;7 8
public &
RepoLendConsistencyQueries )
() *
)* +
{ 	
tblRepoLends 
= 
new 
RepositoryReader /
</ 0
TblRepoLend0 ;
,; <
RicisEuroContext= M
>M N
(N O
)O P
.P Q
ReadQ U
(U V
)V W
.W X
ToListX ^
(^ _
)_ `
;` a
} 	
public 
TblRepoLend 
FindByRepoLendNo +
(+ ,
int, /

repoLendNo0 :
): ;
{ 	
return 
tblRepoLends 
.  
Find  $
($ %
x% &
=>' )
x* +
.+ ,

RepoLendNo, 6
==7 9

repoLendNo: D
)D E
;E F
} 	
} 
} ùQ
}C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Queries\RepoLendTransformQueries.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Queries2 9
{ 
public 

class $
RepoLendTransformQueries )
:* +%
IRepoLendTransformQueries, E
{ 
private 
readonly 
IRicisConfiguration ,
config- 3
;3 4
private 
readonly 
string 
instance  (
;( )
private 
readonly 
List 
< 
TblBond %
>% &
tblBonds' /
;/ 0
private 
readonly 
List 
< #
TblCounterpartyProperty 5
>5 6%
tblCounterpartyProperties7 P
;P Q
private 
readonly 
List 
< 
TblEquityInstrument 1
>1 2 
tblEquityInstruments3 G
;G H
private 
readonly 
List 
<  
TblInstrumentUnknown 2
>2 3!
tblInstrumentUnknowns4 I
;I J
private 
readonly 
List 
< 
TblPortfolioKey -
>- .
tblPortfolioKeys/ ?
;? @
private 
readonly 
List 
< 
TblProperty )
>) *
tblProperties+ 8
;8 9
private 
readonly 
List 
< ,
 TblTransactionCounterpartMapping >
>> ?-
!tblTransactionCounterpartMappings@ a
;a b
public $
RepoLendTransformQueries '
(' (
IRicisConfiguration( ;
config< B
,B C
stringD J
instanceK S
)S T
{ 	
this 
. 
config 
= 
config  
;  !
this 
. 
instance 
= 
instance $
;$ %-
!tblTransactionCounterpartMappings -
= 
new 
RepositoryReader &
<& ',
 TblTransactionCounterpartMapping' G
,G H
RicisEuroContextI Y
>Y Z
(Z [
)[ \
.\ ]
Read] a
(a b
)b c
.c d
ToListd j
(j k
)k l
;l m
tblPortfolioKeys 
=   
new   
RepositoryReader   &
<  & '
TblPortfolioKey  ' 6
,  6 7
RicisEuroContext  8 H
>  H I
(  I J
)  J K
.  K L
Read  L P
(  P Q
)  Q R
.  R S
ToList  S Y
(  Y Z
)  Z [
;  [ \%
tblCounterpartyProperties!! %
="" 
new"" 
RepositoryReader"" &
<""& '#
TblCounterpartyProperty""' >
,""> ?
RicisEuroContext""@ P
>""P Q
(""Q R
)""R S
.""S T
Read""T X
(""X Y
)""Y Z
.""Z [
ToList""[ a
(""a b
)""b c
;""c d
tblProperties## 
=$$ 
new$$ 
RepositoryReader$$ &
<$$& '
TblProperty$$' 2
,$$2 3
RicisEuroContext$$4 D
>$$D E
($$E F
)$$F G
.$$G H
Read$$H L
($$L M
)$$M N
.$$N O
ToList$$O U
($$U V
)$$V W
;$$W X
tblBonds%% 
=&& 
new&& 
RepositoryReader&& &
<&&& '
TblBond&&' .
,&&. /
RicisEuroContext&&0 @
>&&@ A
(&&A B
)&&B C
.&&C D
Read&&D H
(&&H I
)&&I J
.&&J K
ToList&&K Q
(&&Q R
)&&R S
;&&S T 
tblEquityInstruments''  
=(( 
new(( 
RepositoryReader(( &
<((& '
TblEquityInstrument((' :
,((: ;
RicisEuroContext((< L
>((L M
(((M N
)((N O
.((O P
Read((P T
(((T U
)((U V
.((V W
ToList((W ]
(((] ^
)((^ _
;((_ `!
tblInstrumentUnknowns)) !
=** 
new** 
RepositoryReader** &
<**& ' 
TblInstrumentUnknown**' ;
,**; <
RicisEuroContext**= M
>**M N
(**N O
)**O P
.**P Q
Read**Q U
(**U V
)**V W
.**W X
ToList**X ^
(**^ _
)**_ `
;**` a
}++ 	
public-- 
int-- 
?-- %
GetCounterpartFromMapping-- -
(--- .
string--. 4
system--5 ;
,--; <
string--= C
key--D G
)--G H
{.. 	
return// -
!tblTransactionCounterpartMappings// 4
.00 
Find00 
(00 
x00 
=>00 
x00 
.00 
SystemId00 %
==00& (
system00) /
&&000 2
x003 4
.004 5
	SystemKey005 >
==00? A
key00B E
)00E F
.00F G
RicsCntprtNo00G S
;00S T
}11 	
public33 
string33 

GetFileKey33  
(33  !
string33! '
fileType33( 0
,330 1
string332 8
keyName339 @
)33@ A
{44 	
var55 
configValue55 
=55 
config55 $
.55$ %
GetValue55% -
(55- .
fileType55. 6
,556 7
instance558 @
)55@ A
;55A B
var66 
array66 
=66 
configValue66 #
.66# $
Split66$ )
(66) *
$char66* -
)66- .
;66. /
for77 
(77 
var77 
i77 
=77 
$num77 
;77 
i77 
<77 
array77  %
.77% &
Length77& ,
-77- .
$num77/ 0
;770 1
i772 3
+=774 6
$num777 8
)778 9
if88 
(88 
array88 
[88 
i88 
]88 
==88 
keyName88  '
)88' (
return99 
array99  
[99  !
i99! "
+99# $
$num99% &
]99& '
;99' (
throw:: 
new:: '
RicisConfigurationException:: 1
(::1 2
$";; $
Konfigurationsparameter ;; *
{;;* +
keyName;;+ 2
};;2 3
 f√ºr Schl√ºssel ;;3 B
{;;B C
fileType;;C K
};;K L:
. nicht vorhanden. Bitte Konfiguration pflegen.;;L z
";;z {
);;{ |
;;;| }
}<< 	
public?? 
int?? 
??? !
GetInstrumentNoByIsin?? )
(??) *
string??* 0
isin??1 5
)??5 6
{@@ 	
varAA 
retvalAA 
=AA  
tblEquityInstrumentsAA -
.AA- .
FirstOrDefaultAA. <
(AA< =
xAA= >
=>AA? A
xAAB C
.AAC D
IsinAAD H
==AAI K
isinAAL P
)AAP Q
?AAQ R
.AAR S
InstrumentNoAAS _
;AA_ `
ifBB 
(BB 
retvalBB 
==BB 
nullBB 
)BB 
retvalCC 
=CC 
tblBondsCC !
.CC! "
FirstOrDefaultCC" 0
(CC0 1
xCC1 2
=>CC3 5
xCC6 7
.CC7 8
IsinCC8 <
==CC= ?
isinCC@ D
)CCD E
?CCE F
.CCF G
InstrumentNoCCG S
;CCS T
ifDD 
(DD 
retvalDD 
==DD 
nullDD 
)DD 
retvalEE 
=EE !
tblInstrumentUnknownsEE .
.EE. /
FirstOrDefaultEE/ =
(EE= >
xEE> ?
=>EE@ B
xEEC D
.EED E
IsinEEE I
==EEJ L
isinEEM Q
)EEQ R
?EER S
.EES T
InstrumentNoEET `
;EE` a
returnFF 
retvalFF 
;FF 
}GG 	
publicII 
intII 
?II !
GetPortfolioNoFromKeyII )
(II) *
stringII* 0
keyNameII1 8
,II8 9
stringII: @
keyValueIIA I
)III J
{JJ 	
returnKK 
tblPortfolioKeysKK #
.LL 
FindLL 
(LL 
xLL 
=>LL 
xLL 
.LL 
PortfolioKeyLL )
==LL* ,
keyNameLL- 4
&&LL5 7
xLL8 9
.LL9 :
ValueLL: ?
==LL@ B
keyValueLLC K
)LLK L
.LLL M
PortfolioNoLLM X
;LLX Y
}MM 	
publicOO 
stringOO *
GetPropertyValueByCounterpartyOO 4
(OO4 5
intOO5 8
counterpartyNoOO9 G
,OOG H
stringOOI O
propertyNameOOP \
)OO\ ]
{PP 	
returnQQ 
ConvertQQ 
.QQ 
ToStringQQ #
(QQ# $
(QQ$ %
fromQQ% )
cpQQ* ,
inQQ- /%
tblCounterpartyPropertiesQQ0 I
joinRR 
pRR 
inRR 
tblPropertiesRR '
onRR( *
cpRR+ -
.RR- .

PropertyIdRR. 8
equalsRR9 ?
pRR@ A
.RRA B

PropertyIdRRB L
whereSS 
pSS 
.SS 
PropertySS  
==SS! #
propertyNameSS$ 0
&&SS1 3
cpSS4 6
.SS6 7
CntprtNoSS7 ?
==SS@ B
counterpartyNoSSC Q
selectTT 
cpTT 
.TT 
ValueTT 
)TT  
.TT  !
FirstOrDefaultTT! /
(TT/ 0
)TT0 1
)TT1 2
;TT2 3
}UU 	
}VV 
}WW Üs
}C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Services\AbstractRepoLendChecker.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Services2 :
{ 
public 

abstract 
class #
AbstractRepoLendChecker 1
:1 2&
IBusinessRulesCheckService3 M
<M N
IListN S
<S T
RepoLendDtoT _
>_ `
>` a
{ 
	protected #
AbstractRepoLendChecker )
() *
IList* /
</ 0
DataImportAlert0 ?
>? @
	alertListA J
)J K
{ 	
	AlertList 
= 
	alertList !
;! "
} 	
	protected 
IList 
< 
DataImportAlert '
>' (
	AlertList) 2
{3 4
get5 8
;8 9
}: ;
	protected 
RepoLendDto 
Item "
{# $
get% (
;( )
set* -
;- .
}/ 0
	protected 
IList 
< 
RepoLendDto #
># $
P% &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
private 
bool 
ErrorDetected "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
void 
Check 
( 
IList 
<  
RepoLendDto  +
>+ ,
p- .
). /
{ 	
ErrorDetected 
= 
false !
;! "
this 
. 
P 
= 
p 
; 
foreach 
( 
var 
item 
in  
p! "
)" #
{ 
this   
.   
Item   
=   
item    
;    !
}"" 
if$$ 
($$ 
ErrorDetected$$ 
)$$ 
throw$$ $
new$$% ($
DataImportCheckException$$) A
($$A B
$str$$B G
)$$G H
;$$H I
}%% 	
	protected'' 
abstract'' 
void'' 
CheckFields''  +
(''+ ,
)'', -
;''- .
public)) 
WarningHelper)) 
Warning)) $
())$ %
bool))% )
	predicate))* 3
)))3 4
{** 	
return++ 
new++ 
WarningHelper++ $
(++$ %
this++% )
,++) *
	predicate++* 3
)++3 4
;++4 5
},, 	
public.. 
ErrorHelper.. 
Error..  
(..  !
bool..! %
	predicate..& /
)../ 0
{// 	
return00 
new00 
ErrorHelper00 "
(00" #
this00# '
,00' (
	predicate00) 2
)002 3
;003 4
}11 	
public33 

InfoHelper33 
Info33 
(33 
bool33 #
	predicate33$ -
)33- .
{44 	
return55 
new55 

InfoHelper55 !
(55! "
this55" &
,55& '
	predicate55( 1
)551 2
;552 3
}66 	
	protected:: 
static:: 
bool:: 
IsInt:: #
(::# $
string::$ *

expression::+ 5
)::5 6
{;; 	
int<< 
notUsed<< 
;<< 
return== 
int== 
.== 
TryParse== 
(==  

expression==  *
,==* +
out==, /
notUsed==0 7
)==7 8
;==8 9
}>> 	
	protected?? 
static?? 
bool?? 
IsNotInt?? &
(??& '
string??' -

expression??. 8
)??8 9
{@@ 	
returnBB 
!BB 
IsIntBB 
(BB 

expressionBB $
)BB$ %
;BB% &
}CC 	
	protectedEE 
staticEE 
boolEE 
NotIsInEE %
(EE% &
stringEE& ,
sEE- .
,EE. /
paramsEE0 6
stringEE7 =
[EE= >
]EE> ?
sListEE@ E
)EEE F
{FF 	
returnHH 
ArrayHH 
.HH 
IndexOfHH  
(HH  !
sListHH! &
,HH& '
sHH( )
)HH) *
<HH+ ,
$numHH- .
;HH. /
}II 	
publicKK 
classKK 
IssueHelperKK  
{LL 	
privateMM 
readonlyMM #
AbstractRepoLendCheckerMM 4
parentMM5 ;
;MM; <
privateNN 
readonlyNN 
boolNN !
	predicateNN" +
;NN+ ,
privateOO 
stringOO 
messageOO "
;OO" #
privatePP 
readonlyPP 

AlertLevelPP '
levelPP( -
;PP- .
privateQQ 
readonlyQQ 
IListQQ "
<QQ" #

AlertFieldQQ# -
>QQ- .
alertFieldsQQ/ :
=QQ; <
newQQ= @
ListQQA E
<QQE F

AlertFieldQQF P
>QQP Q
(QQQ R
)QQR S
;QQS T
publicSS 
IssueHelperSS 
(SS #
AbstractRepoLendCheckerSS 6
parentSS7 =
,SS= >
boolSS> B
	predicateSSC L
,SSL M

AlertLevelSSN X
levelSSY ^
=SS_ `

AlertLevelSSa k
.SSk l
FehlerSSl r
)SSr s
{TT 
thisUU 
.UU 
parentUU 
=UU 
parentUU $
;UU$ %
thisVV 
.VV 
	predicateVV 
=VV  
	predicateVV! *
;VV* +
thisWW 
.WW 
levelWW 
=WW 
levelWW "
;WW" #
}XX 
publicZZ 
IssueHelperZZ 
MessageZZ &
(ZZ& '
stringZZ' -
messageZZ. 5
)ZZ5 6
{[[ 
this\\ 
.\\ 
message\\ 
=\\ 
message\\ &
;\\& '
return]] 
this]] 
;]] 
}^^ 
public`` 
virtual`` 
IssueHelper`` &
Field``' ,
<``, -
RepoLendDto``- 8
>``8 9
(``9 :
Guid``: >
dtoGuid``? F
,``F G
string``H N
propertyName``O [
)``[ \
{aa 
alertFieldsbb 
.bb 
Addbb 
(bb  
newbb  #

AlertFieldbb$ .
{cc 
DtoGuiddd 
=dd 
dtoGuiddd %
,dd% &
PropertyInfoee  
=ee! "
typeofee# )
(ee) *
RepoLendDtoee* 5
)ee5 6
.ee6 7
GetPropertyee7 B
(eeB C
propertyNameeeC O
)eeO P
}ff 
)ff 
;ff 
returngg 
thisgg 
;gg 
}ii 
publickk 
virtualkk 
IssueHelperkk &
Fieldkk' ,
(kk, -
Guidkk- 1
dtoGuidkk2 9
,kk9 :
stringkk; A
propertyNamekkB N
,kkN O
TypekkP T
typekkU Y
)kkY Z
{ll 
alertFieldsll 
.ll 
Addll 
(ll 
newll !

AlertFieldll" ,
{mm 
DtoGuidnn 
=nn 
dtoGuidnn %
,nn% &
PropertyInfooo  
=oo! "
typeoo# '
.oo' (
GetPropertyoo( 3
(oo3 4
propertyNameoo4 @
)oo@ A
}pp 
)pp 
;pp 
returnqq 
thisqq 
;qq 
}rr 
publictt 
virtualtt 
IssueHelpertt &
Fieldtt' ,
(tt, -
Guidtt- 1
dtoGuidtt2 9
,tt9 :
stringtt; A
propertyNamettB N
)ttN O
{uu 
alertFieldsvv 
.vv 
Addvv 
(vv  
newvv  #

AlertFieldvv$ .
{ww 
DtoGuidxx 
=xx 
dtoGuidxx %
,xx% &
PropertyInfoyy  
=yy! "
parentyy# )
.yy) *
Itemyy* .
.yy. /
GetTypeyy/ 6
(yy6 7
)yy7 8
.yy8 9
GetPropertyyy9 D
(yyD E
propertyNameyyE Q
)yyQ R
}zz 
)zz 
;zz 
return{{ 
this{{ 
;{{ 
}|| 
public}} 
virtual}} 
IssueHelper}} &
Field}}' ,
<}}, -
T}}- .
>}}. /
(}}/ 0
T}}0 1
item}}2 6
,}}6 7
string}}8 >
propertyName}}? K
,}}K L
string}}M S
idName}}T Z
=}}[ \
$str}}] c
)}}c d
{~~ 
alertFields 
. 
Add 
(  
new  #

AlertField$ .
{
ÄÄ 
DtoGuid
ÇÇ 
=
ÇÇ 
(
ÇÇ 
Guid
ÇÇ #
)
ÇÇ# $
(
ÇÇ$ %
typeof
ÇÇ% +
(
ÇÇ+ ,
T
ÇÇ, -
)
ÇÇ- .
.
ÇÇ. /
GetProperty
ÇÇ/ :
(
ÇÇ: ;
idName
ÇÇ; A
)
ÇÇA B
.
ÇÇB C
GetValue
ÇÇC K
(
ÇÇK L
item
ÇÇL P
)
ÇÇP Q
)
ÇÇQ R
,
ÇÇR S
PropertyInfo
ÉÉ  
=
ÉÉ! "
typeof
ÉÉ# )
(
ÉÉ) *
T
ÉÉ* +
)
ÉÉ+ ,
.
ÉÉ, -
GetProperty
ÉÉ- 8
(
ÉÉ8 9
propertyName
ÉÉ9 E
)
ÉÉE F
}
ÑÑ 
)
ÑÑ 
;
ÑÑ 
return
ÖÖ 
this
ÖÖ 
;
ÖÖ 
}
ÜÜ 
public
ää 
virtual
ää 
IssueHelper
ää &
Field
ää' ,
(
ää, -
string
ää- 3
propertyName
ää4 @
,
ää@ A
string
ääB H
idName
ääI O
=
ääP Q
$str
ääR X
)
ääX Y
{
ãã 
alertFields
åå 
.
åå 
Add
åå 
(
åå  
new
åå  #

AlertField
åå$ .
{
çç 
DtoGuid
èè 
=
èè 
(
èè 
Guid
èè #
)
èè# $
(
èè$ %
parent
èè% +
.
èè+ ,
Item
èè, 0
.
èè0 1
GetType
èè1 8
(
èè8 9
)
èè9 :
.
èè: ;
GetProperty
èè; F
(
èèF G
idName
èèG M
)
èèM N
.
èèN O
GetValue
èèO W
(
èèW X
parent
èèX ^
.
èè^ _
Item
èè_ c
)
èèc d
)
èèd e
,
èèe f
PropertyInfo
êê  
=
êê! "
parent
êê# )
.
êê) *
Item
êê* .
.
êê. /
GetType
êê/ 6
(
êê6 7
)
êê7 8
.
êê8 9
GetProperty
êê9 D
(
êêD E
propertyName
êêE Q
)
êêQ R
}
ëë 
)
ëë 
;
ëë 
return
íí 
this
íí 
;
íí 
}
ìì 
public
ïï 
virtual
ïï 
bool
ïï 
addToAlerts
ïï  +
(
ïï+ ,
)
ïï, -
{
ññ 
if
óó 
(
óó 
!
óó 
	predicate
óó 
)
óó 
return
óó  &
false
óó' ,
;
óó, -
DataImportAlert
ôô 
alert
ôô  %
=
ôô& '
DataImportAlert
ôô( 7
.
ôô7 8
GetInstance
ôô8 C
<
ôôC D
RepoLendDto
ôôD O
>
ôôO P
(
ôôP Q
level
öö 
,
öö 
message
õõ 
)
õõ 
;
õõ 
if
ùù 
(
ùù 
level
ùù 
==
ùù 

AlertLevel
ùù '
.
ùù' (
Fehler
ùù( .
)
ùù. /
parent
ûû 
.
ûû 
ErrorDetected
ûû (
=
ûû) *
true
ûû+ /
;
ûû/ 0
alert
üü 
.
üü 
AlertFields
üü !
.
üü! "
AddRange
üü" *
(
üü* +
alertFields
üü+ 6
)
üü6 7
;
üü7 8
parent
†† 
.
†† 
	AlertList
†† 
.
††  
Add
††  #
(
††# $
alert
††$ )
)
††) *
;
††* +
return
°° 
true
°° 
;
°° 
}
¢¢ 
}
££ 	
public
§§ 
class
§§ 

InfoHelper
§§ 
:
§§  !
IssueHelper
§§" -
{
•• 	
public
¶¶ 

InfoHelper
¶¶ 
(
¶¶ %
AbstractRepoLendChecker
¶¶ 5
parent
¶¶6 <
,
¶¶< =
bool
¶¶> B
	predicate
¶¶C L
)
¶¶L M
:
¶¶N O
base
¶¶P T
(
¶¶T U
parent
¶¶U [
,
¶¶[ \
	predicate
¶¶] f
,
¶¶f g

AlertLevel
¶¶h r
.
¶¶r s
Info
¶¶s w
)
¶¶w x
{
ßß 
}
®® 
}
©© 	
public
™™ 
class
™™ 
WarningHelper
™™ "
:
™™# $
IssueHelper
™™% 0
{
´´ 	
public
¨¨ 
WarningHelper
¨¨  
(
¨¨  !%
AbstractRepoLendChecker
¨¨! 8
parent
¨¨9 ?
,
¨¨? @
bool
¨¨A E
	predicate
¨¨F O
)
¨¨O P
:
¨¨Q R
base
¨¨S W
(
¨¨W X
parent
¨¨X ^
,
¨¨^ _
	predicate
¨¨` i
,
¨¨i j

AlertLevel
¨¨k u
.
¨¨u v
Warnung
¨¨v }
)
¨¨} ~
{
≠≠ 
}
ÆÆ 
}
ØØ 	
public
∞∞ 
class
∞∞ 
ErrorHelper
∞∞  
:
∞∞! "
IssueHelper
∞∞# .
{
±± 	
public
≤≤ 
ErrorHelper
≤≤ 
(
≤≤ %
AbstractRepoLendChecker
≤≤ 6
parent
≤≤7 =
,
≤≤= >
bool
≤≤? C
	predicate
≤≤D M
)
≤≤M N
:
≤≤O P
base
≤≤Q U
(
≤≤U V
parent
≤≤V \
,
≤≤\ ]
	predicate
≤≤^ g
,
≤≤g h

AlertLevel
≤≤i s
.
≤≤s t
Warnung
≤≤t {
)
≤≤{ |
{
≥≥ 
}
¥¥ 
}
∑∑ 	
}
∏∏ 
}ºº ≥
~C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Services\DataImportCheckException.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Services2 :
{ 
[ 
Serializable 
] 
public 

class $
DataImportCheckException )
:* +
	Exception, 5
{ 
public		 $
DataImportCheckException		 '
(		' (
string		( .
ups		/ 2
)		2 3
:		4 5
base		6 :
(		: ;
ups		; >
)		> ?
{

 	
} 	
	protected $
DataImportCheckException *
(* +
SerializationInfo+ <
info= A
,A B
StreamingContextC S
contextT [
)[ \
:\ ]
base] a
(a b
infob f
,f g
contexth o
)o p
{ 	
} 	
public 
override 
void 
GetObjectData *
(* +
SerializationInfo+ <
info= A
,A B
StreamingContextC S
contextT [
)[ \
{ 	
base 
. 
GetObjectData 
( 
info #
,# $
context% ,
), -
;- .
} 	
} 
} ¡	
ÑC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Services\RepoLendCheckImportDateService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Services2 :
{ 
public 

class *
RepoLendCheckImportDateService /
{ 
public		 
bool		 
IsDataInDatabase		 $
(		$ %
DateTime		% -
betrachtungstag		. =
)		= >
{

 	
using 
( 
var 
context 
=  
new! $
RicisEuroContext% 5
(5 6
)6 7
)7 8
{ 
return 
context 
. 
TblRepoLend *
.* +
FirstOrDefault+ 9
(9 :
x: ;
=>< >
x? @
.@ A
	TradeDateA J
==K M
betrachtungstagN ]
)] ^
!=_ a
nullb f
;f g
} 
} 	
} 
} ’
ëC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Services\RepoLendConsistencyWithDatabaseCheckService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Services2 :
{		 
public

 

class

 7
+RepoLendConsistencyWithDatabaseCheckService 3
:4 5&
IBusinessRulesCheckService6 P
<P Q
IList 
< 
Tuple 
< 
TblRepoLend #
,# $
TblInstrument% 2
>2 3
>3 4
>4 5
{ 
public 7
+RepoLendConsistencyWithDatabaseCheckService :
(: ;
IList; @
<@ A
DataImportAlertA P
>P Q
	alertListR [
,[ \'
IRepoLendConsistencyQueries '&
repoLendConsistencyQueries( B
)B C
{ 	
	AlertList 
= 
	alertList !
;! "&
RepoLendConsistencyQueries &
=' (&
repoLendConsistencyQueries) C
;C D
} 	
private '
IRepoLendConsistencyQueries +&
RepoLendConsistencyQueries, F
{G H
getI L
;L M
}N O
private 
IList 
< 
DataImportAlert %
>% &
	AlertList' 0
{1 2
get3 6
;6 7
}8 9
public 
void 
Check 
( 
IList 
<  
Tuple  %
<% &
TblRepoLend& 1
,1 2
TblInstrument3 @
>@ A
>A B
pC D
)D E
{ 	
foreach 
( 
var 
item 
in  
p! "
)" # 
CheckAgainstDatabase$ 8
(8 9
item9 =
)= >
;> ?
} 	
private 
void  
CheckAgainstDatabase )
() *
Tuple* /
</ 0
TblRepoLend0 ;
,; <
TblInstrument= J
>J K
itemL P
)P Q
{ 	
var 

repoLendNo 
= 
( 
int !
)! "
item# '
.' (
Item1( -
.- .

RepoLendNo. 8
;8 9
if!! 
(!! 
item!! 
.!! 
Item2!! 
.!! 
InstrumentType!! )
==!!* ,
$str!!- 4
||!!5 7&
RepoLendConsistencyQueries"" *
.""* +
FindByRepoLendNo""+ ;
(""; <

repoLendNo""< F
)""F G
==""H J
default""K R
(""R S
TblRepoLend""S ^
)""^ _
)""_ `
return## 
;## 
	AlertList%% 
.%% 
Add%% 
(%% 
DataImportAlert%% )
.%%) *
GetInstance%%* 5
<%%5 6
TblRepoLend%%6 A
>%%A B
(%%B C

AlertLevel&& 
.&& 
Fehler&& %
,&&% &
$"'' %
Gesch√§ft mit RepoLendNo '' .
{''. /

repoLendNo''/ 9
}''9 :.
" bereits in tblRepoLend vorhanden.'': \
"''\ ]
)''] ^
.(( 
AddAlertField(( 
<(( 
TblRepoLend(( *
>((* +
(((+ ,
Guid((, 0
.((0 1
Empty((1 6
,((6 7
$str((8 D
)((D E
)((E F
;((F G
})) 	
}** 
}++ ˙I
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Services\RepoLendFieldCheckService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Services2 :
{ 
public 

class %
RepoLendFieldCheckService *
:+ ,#
AbstractRepoLendChecker- D
{ 
public		 %
RepoLendFieldCheckService		 (
(		( )
IList		) .
<		. /
DataImportAlert		/ >
>		> ?
	alertList		@ I
,		I J
DateTime		K S
betrachtungstag		T c
)		c d
:		e f
base		g k
(		k l
	alertList		l u
)		u v
{

 	
Betrachtungstag 
= 
betrachtungstag -
;- .
} 	
private 
DateTime 
Betrachtungstag (
{) *
get+ .
;. /
}0 1
	protected 
override 
void 
CheckFields  +
(+ ,
), -
{ 	
CheckErrors 
( 
) 
; 
CheckWarnings 
( 
) 
; 

CheckInfos 
( 
) 
; 
} 	
private 
void 

CheckInfos 
(  
)  !
{ 	
Info 
( 
! 
Item 
. 
Zsmodb 
. 
Contains &
(& '
$str' 0
)0 1
)1 2
.2 3
Message3 :
(: ;
$str; g
)g h
.h i
Fieldi n
(n o
$stro w
)w x
. 
addToAlerts 
( 
) 
; 
} 	
private 
void 
CheckWarnings "
(" #
)# $
{ 	
Warning   
(   
(   
Betrachtungstag   $
-  % &
Item  ' +
.  + ,
Datumab  , 3
)  3 4
.  4 5
Days  5 9
>  : ;
$num  < >
)  > ?
.!! 
Message!! 
(!! 
$str!! V
)!!V W
.!!W X
Field!!X ]
(!!] ^
$str!!^ g
)!!g h
.!!h i
addToAlerts!!i t
(!!t u
)!!u v
;!!v w
Warning"" 
("" 
Item"" 
."" 
	Marktkurs"" "
==""# %
$num""& (
)""( )
."") *
Message""* 1
(""1 2
$str""2 H
)""H I
.""I J
Field""J O
(""O P
$str""P [
)""[ \
.""\ ]
addToAlerts""] h
(""h i
)""i j
;""j k
}## 	
private%% 
void%% 
CheckErrors%%  
(%%  !
)%%! "
{&& 	
var(( 
OBSBelegNummerFehlt(( #
=(($ %
Item((& *
.((* +
Beleg((+ 0
==((1 3
string((4 :
.((: ;
Empty((; @
;((@ A
var)) &
OBSBelegNummerIsNotNumeric)) *
=))+ ,
IsNotInt))- 5
())5 6
Item))6 :
.)): ;
Beleg)); @
)))@ A
;))A B
if,, 
(,, 
!,, 
Error,, 
(,, 
OBSBelegNummerFehlt,, *
),,* +
.,,+ ,
Message,,, 3
(,,3 4
$str,,4 I
),,I J
.,,J K
Field,,K P
(,,P Q
$str,,Q X
),,X Y
.,,Y Z
addToAlerts,,Z e
(,,e f
),,f g
),,g h
Error-- 
(-- &
OBSBelegNummerIsNotNumeric-- 0
)--0 1
.--1 2
Message--2 9
(--9 :
$str--: R
)--R S
.--S T
Field--T Y
(--Y Z
$str--Z a
)--a b
.--b c
addToAlerts--c n
(--n o
)--o p
;--p q
Error// 
(// 
Item// 
.// 
Lfzb// 
<// 
Betrachtungstag// -
)//- .
.00 
Message00 
(00 
$str00 L
)00L M
.11 
Field11 
(11 
$str11 
)11 
.22 
addToAlerts22 
(22 
)22 
;22 
Error44 
(44 
Item44 
.44 
Snr44 
==44 
string44 $
.44$ %
Empty44% *
)44* +
.44+ ,
Message44, 3
(443 4
$str444 L
)44L M
.44M N
Field44N S
(44S T
$str44T Y
)44Y Z
.44Z [
addToAlerts44[ f
(44f g
)44g h
;44h i
Error55 
(55 
Item55 
.55 
Denr55 
==55 
string55 %
.55% &
Empty55& +
)55+ ,
.55, -
Message55- 4
(554 5
$str555 M
)55M N
.55N O
Field55O T
(55T U
$str55U [
)55[ \
.55\ ]
addToAlerts55] h
(55h i
)55i j
;55j k
Error77 
(77 
!77 
(77 
Item77 
.77 
Storno77 
==77  "
string77# )
.77) *
Empty77* /
||770 2
Item773 7
.777 8
Storno778 >
==77? A
$str77B E
)77E F
)77F G
.77G H
Message77H O
(77O P
$str77P g
)77g h
.77h i
Field77i n
(77n o
$str77o w
)77w x
.88 
addToAlerts88 
(88 
)88 
;88 
Error99 
(99 
NotIsIn99 
(99 
Item99 
.99 
Reart99 $
,99$ %
$str99& ,
,99, -
$str99. 4
,994 5
$str996 <
)99< =
)99= >
.99> ?
Message99? F
(99F G
$str99G `
)99` a
.99a b
Field99b g
(99g h
$str99h o
)99o p
.:: 
addToAlerts:: 
(:: 
):: 
;:: 
Error<< 
(<< 
NotIsIn<< 
(<< 
Item<< 
.<< 
Reartbez<< '
,<<' (
$str<<) 8
,<<8 9
$str<<: N
,<<N O
$str<<P a
)<<a b
)<<b c
.== 
Message== 
(== 
$str== <
)==< =
.=== >
Field==> C
(==C D
$str==D N
)==N O
.==O P
addToAlerts==P [
(==[ \
)==\ ]
;==] ^
Error?? 
(?? 
Item?? 
.?? 
Wpnr?? 
.?? 
Length?? "
!=??# %
$num??& (
)??( )
.??) *
Message??* 1
(??1 2
$str??2 R
)??R S
.??S T
Field??T Y
(??Y Z
$str??Z `
)??` a
.??a b
addToAlerts??b m
(??m n
)??n o
;??o p
ErrorAA 
(AA 
ItemAA 
.AA 
SnrkAA 
==AA 
stringAA %
.AA% &
EmptyAA& +
)AA+ ,
.AA, -
MessageAA- 4
(AA4 5
$strAA5 [
)AA[ \
.AA\ ]
FieldAA] b
(AAb c
$strAAc i
)AAi j
.BB 
addToAlertsBB 
(BB 
)BB 
;BB 
ErrorCC 
(CC 
ItemCC 
.CC 
WhguCC 
.CC 
LengthCC "
!=CC# %
$numCC& '
)CC' (
.CC( )
MessageCC) 0
(CC0 1
$strCC1 O
)CCO P
.CCP Q
FieldCCQ V
(CCV W
$strCCW ]
)CC] ^
.CC^ _
addToAlertsCC_ j
(CCj k
)CCk l
;CCl m
ErrorEE 
(EE 
NotIsInEE 
(EE 
ItemEE 
.EE 
StatbEE $
,EE$ %
$strEE& 3
,EE3 4
$strEE5 @
)EE@ A
)EEA B
.EEB C
MessageEEC J
(EEJ K
$strEEK k
)EEk l
.FF 
FieldFF 
(FF 
$strFF 
)FF 
.GG 
addToAlertsGG 
(GG 
)GG 
;GG 
varII 
intrefrcII 
=II 
ItemII 
.II  
IntrefrcII  (
;II( )
ErrorJJ 
(JJ 
intrefrcJJ 
!=JJ 
stringJJ $
.JJ$ %
EmptyJJ% *
&&JJ+ -
IsNotIntJJ. 6
(JJ6 7
intrefrcJJ7 ?
)JJ? @
)JJ@ A
.KK 
MessageKK 
(KK 
$strKK K
)KKK L
.LL 
FieldLL 
(LL 
$strLL !
)LL! "
.LL" #
addToAlertsLL# .
(LL. /
)LL/ 0
;LL0 1
}MM 	
}NN 
}OO ‹

ÉC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Services\RepoLendInitImportFileService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Services2 :
{ 
public 

class )
RepoLendInitImportFileService .
:/ 0!
InitImportFileService1 F
{ 
private )
RepoLendInitImportFileService -
(- .$
IDataImportConfiguration. F
configG M
,M N
stringO U
useCaseV ]
)] ^
:_ `
basea e
(e f
configf l
,l m
useCasen u
)u v
{ 	
}		 	
public 
static )
RepoLendInitImportFileService 3
GetInstance4 ?
(? @
string@ F
useCaseRepoLendG V
)V W
{ 	
return 
new )
RepoLendInitImportFileService 4
(4 5
new5 8#
DataImportConfiguration9 P
(P Q
)Q R
,R S
useCaseRepoLendT c
)c d
;d e
} 	
} 
} ˛A
ÑC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Services\RepoLendMultiFieldCheckService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Services2 :
{ 
public 

class *
RepoLendMultiFieldCheckService /
:0 1#
AbstractRepoLendChecker2 I
{		 
public

 *
RepoLendMultiFieldCheckService

 -
(

- .
IList

. 3
<

3 4
DataImportAlert

4 C
>

C D
	alertList

E N
,

N O'
IInterestCalculationService '&
interestCalculationService( B
)B C
:D E
baseF J
(J K
	alertListK T
)T U
{ 	&
InterestCalculationService &
=' (&
interestCalculationService) C
;C D
} 	
private '
IInterestCalculationService +&
InterestCalculationService, F
{G H
getI L
;L M
}N O
	protected 
override 
void 
CheckFields  +
(+ ,
), -
{ 	
Error 
( 
Item 
. 
Lfzv 
>= 
Item #
.# $
Lfzb$ (
)( )
. 
Message 
( 
$str H
)H I
. 
Field 
( 
$str 
) 
. 
Field 
( 
$str 
) 
. 
addToAlerts 
( 
) 
; 
Error 
( 
( 
Item 
. 
Lfzb 
- 
Item #
.# $
Lfzv$ (
)( )
.) *
Days* .
!=/ 1
Item2 6
.6 7
Zstage7 =
)= >
. 
Message 
( 
$str Q
)Q R
. 
Field 
( 
$str 
) 
. 
Field 
( 
$str 
) 
. 
Field 
( 
$str 
)  
.   
addToAlerts   
(   
)   
;   
Error"" 
("" .
"IsKombinationOfStornoStatusInvalid"" 4
(""4 5
)""5 6
)""6 7
.## 
Message## 
(## 
$str## S
)##S T
.$$ 
Field$$ 
($$ 
$str$$ 
)$$  
.%% 
Field%% 
(%% 
$str%% 
)%% 
.&& 
addToAlerts&& 
(&& 
)&& 
;&& 
Error(( 
((( A
5IsKombinationOfReartReartbezAb1Ab2NennwertSrnkInValid(( G
(((G H
)((H I
)((I J
.)) 
Message)) 
()) 
$str)) i
)))i j
.** 
Field** 
(** 
$str** 
)** 
.++ 
Field++ 
(++ 
$str++ !
)++! "
.,, 
Field,, 
(,, 
$str,, 
),, 
.-- 
Field-- 
(-- 
$str-- 
)-- 
... 
Field.. 
(.. 
$str.. !
)..! "
.// 
Field// 
(// 
$str// 
)// 
.00 
addToAlerts00 
(00 
)00 
;00 
Error22 
(22 
Item22 
.22 
Reart22 
==22 
$str22  &
&&22' )
Item22* .
.22. /
Intrefrc22/ 7
==228 :
$str22; =
)22= >
.33 
Message33 
(33 
$str33 F
)33F G
.44 
Field44 
(44 
$str44 
)44 
.55 
Field55 
(55 
$str55 !
)55! "
.66 
addToAlerts66 
(66 
)66 
;66 
Error88 
(88 "
BerechneterZinsInvalid88 (
(88( )
)88) *
)88* +
.99 
Message99 
(99 
$str99 v
)99v w
.:: 
Field:: 
(:: 
$str:: 
):: 
.;; 
Field;; 
(;; 
$str;; 
);; 
.<< 
Field<< 
(<< 
$str<< 
)<< 
.== 
Field== 
(== 
$str== 
)== 
.>> 
Field>> 
(>> 
$str>> 
)>> 
.?? 
addToAlerts?? 
(?? 
)?? 
;?? 
}@@ 	
privateBB 
boolBB "
BerechneterZinsInvalidBB +
(BB+ ,
)BB, -
{CC 	
returnDD 
MathDD 
.DD 
AbsDD 
(DD 
ItemDD  
.DD  !
Ab1DD! $
+DD% &
ItemEE  
.EE  !
Ab1EE! $
*EE% &&
InterestCalculationServiceEE' A
.EEA B
CalcSimpleInterestEEB T
(EET U
ItemEEU Y
.EEY Z
LfzvEEZ ^
,EE^ _
ItemEE` d
.EEd e
LfzbEEe i
,EEi j
ItemFF  $
.FF$ %
ZsFF% '
/FF( )
$numFF* -
,FF- .
$strFF/ 8
)FF8 9
+FF: ;
ItemFF< @
.FF@ A
Ab2FFA D
)FFD E
>FFF G
$numFFH I
;FFI J
}GG 	
privateII 
boolII .
"IsKombinationOfStornoStatusInvalidII 7
(II7 8
)II8 9
{JJ 	
returnKK 
!KK 
(KK 
ItemKK 
.KK 
StornoKK  
==KK! #
$strKK$ &
&&KK' )
ItemKK* .
.KK. /
StatbKK/ 4
==KK5 7
$strKK8 E
||LL 
ItemLL 
.LL 
StornoLL #
==LL$ &
$strLL' *
&&LL+ -
ItemLL. 2
.LL2 3
StatbLL3 8
==LL9 ;
$strLL< G
)LLG H
;LLH I
}MM 	
privateOO 
boolOO A
5IsKombinationOfReartReartbezAb1Ab2NennwertSrnkInValidOO J
(OOJ K
)OOK L
{PP 	
returnQQ 
!QQ 
(QQ 
ItemQQ 
.QQ 
ReartQQ 
==QQ  "
$strQQ# )
&&QQ* ,
ItemQQ- 1
.QQ1 2
ReartbezQQ2 :
==QQ; =
$strQQ> M
&&QQN P
ItemQQQ U
.QQU V
Ab1QQV Y
<QQZ [
$numQQ\ ]
&&QQ^ `
ItemQQa e
.QQe f
Ab2QQf i
>QQj k
$numQQl m
&&QQn p
ItemRR 
.RR 
NennwertRR "
<RR# $
$numRR% &
||SS 
ItemSS 
.SS 
ReartSS "
==SS# %
$strSS& ,
&&SS- /
ItemSS0 4
.SS4 5
ReartbezSS5 =
==SS> @
$strSSA R
&&SSS U
ItemSSV Z
.SSZ [
Ab1SS[ ^
<SS_ `
$numSSa b
&&SSc e
ItemSSf j
.SSj k
Ab2SSk n
>SSo p
$numSSq r
&&SSs u
ItemTT 
.TT 
NennwertTT "
<TT# $
$numTT% &
&&TT' )
ItemTT* .
.TT. /
SnrkTT/ 3
==TT4 6
$strTT7 @
||UU 
ItemUU 
.UU 
ReartUU "
==UU# %
$strUU& ,
&&UU- /
ItemUU0 4
.UU4 5
ReartbezUU5 =
==UU> @
$strUUA U
&&UUV X
ItemUUY ]
.UU] ^
Ab1UU^ a
>UUb c
$numUUd e
&&UUf h
ItemUUi m
.UUm n
Ab2UUn q
<UUr s
$numUUt u
&&UUv x
ItemVV 
.VV 
NennwertVV "
>VV# $
$numVV% &
)VV& '
;VV' (
}WW 	
}XX 
}YY Éu
ÖC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Services\RepoLendMultiRecordCheckService.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Services2 :
{		 
public

 

class

 +
RepoLendMultiRecordCheckService

 0
:

1 2#
AbstractRepoLendChecker

3 J
{ 
public +
RepoLendMultiRecordCheckService .
(. /
IList/ 4
<4 5
DataImportAlert5 D
>D E
	alertListF O
)O P
:Q R
baseS W
(W X
	alertListX a
)a b
{ 	
} 	
	protected 
override 
void 
CheckFields  +
(+ ,
), -
{ 	*
OBSBelegnrIstMehrfachVorhanden *
(* +
), -
;- .
HandleReart 
( 
) 
; 
} 	
private 
void 
HandleReart  
(  !
)" #
{ 	
var 
handler 
= 
ReartHandlerFactory -
.- .
CreateReartHandler. @
(@ A
ItemA E
.E F
ReartF K
,K L
thisM Q
)Q R
;R S
if 
( 
handler 
!= 
null 
)  
handler 
. 
handle 
( 
Item #
,# $
P% &
.& '
ToList' -
(- .
). /
)/ 0
;0 1
} 	
private 
void *
OBSBelegnrIstMehrfachVorhanden 3
(3 4
)4 5
{   	
var!! 
foundRepoLendDtos!! !
=!!" #
findRepoLendDtos!!$ 4
(!!4 5
)!!5 6
;!!6 7
ErrorHelper## 
error## 
=## 
Error##  %
(##% &
foundRepoLendDtos##& 7
.##7 8
Count##8 =
>##> ?
$num##@ A
)##A B
;##B C
error$$ 
.$$ 
Message$$ 
($$ 
$str$$ D
)$$D E
.$$E F
Field$$F K
($$K L
$str$$L S
)$$S T
;$$T U
foreach%% 
(%% 
var%% 
element%%  
in%%! #
foundRepoLendDtos%%$ 5
)%%5 6
error%%7 <
.%%< =
Field%%= B
(%%B C
element%%C J
,%%J K
$str%%L S
)%%S T
;%%T U
error&& 
.&& 
addToAlerts&& 
(&& 
)&& 
;&&  
}(( 	
private** 
List** 
<** 
RepoLendDto**  
>**  !
findRepoLendDtos**" 2
(**2 3
)**3 4
{++ 	
var,, 
foundRepoLendDtos,, !
=,," #
new,,$ '
List,,( ,
<,,, -
RepoLendDto,,- 8
>,,8 9
(,,9 :
),,: ;
;,,; <
foundRepoLendDtos-- 
=-- 
P--  !
.--! "
ToList--" (
(--( )
)--) *
.--* +
FindAll--+ 2
(--2 3
s--3 4
=>--5 7
s--8 9
.--9 :
Beleg--: ?
.--? @
Equals--@ F
(--F G
Item--G K
.--K L
Beleg--L Q
)--Q R
)--R S
;--S T
foundRepoLendDtos.. 
... 
Remove.. $
(..$ %
Item..% )
)..) *
;..* +
return// 
foundRepoLendDtos// $
;//$ %
}00 	
private22 
static22 
class22 
ReartHandlerFactory22 0
{33 	
public44 
static44 
ReartHandler44 &
CreateReartHandler44' 9
(449 :
string44: @
	reartType44A J
,44J K#
AbstractRepoLendChecker44L c
parent44d j
)44j k
{55 
try66 
{77 
return88 
(88 
ReartHandler88 (
)88( )
	Activator88* 3
.883 4
CreateInstance884 B
(88B C
Type99 
.99 
GetType99 $
(99$ %
$str:: o
+::p q
	reartType;; %
+;;& '
$str;;( 1
);;1 2
,;;2 3
parent;;4 :
);;: ;
;;;; <
}<< 
catch== 
(== 
	Exception==  
)==! "
{>> 
return?? 
null?? 
;??  
}@@ 
}AA 
}BB 	
	protectedDD 
abstractDD 
classDD  
ReartHandlerDD! -
{EE 	
	protectedFF 
ReartHandlerFF "
(FF" ##
AbstractRepoLendCheckerFF# :
parentFF; A
)FFA B
{GG 
ParentHH 
=HH 
parentHH 
;HH  
}II 
	protectedKK #
AbstractRepoLendCheckerKK -
ParentKK. 4
{KK5 6
getKK7 :
;KK: ;
}KK< =
publicMM 
abstractMM 
voidMM  
handleMM! '
(MM' (
RepoLendDtoMM( 3
itemMM4 8
,MM8 9
ListMM: >
<MM> ?
RepoLendDtoMM? J
>MMJ K
pMML M
)MMM N
;MMN O
}NN 	
	protectedPP 
classPP 
RPEVHandlerPP #
:PP$ %
ReartHandlerPP& 2
{QQ 	
publicRR 
RPEVHandlerRR 
(RR #
AbstractRepoLendCheckerRR 6
parentRR7 =
)RR= >
:RR? @
baseRRA E
(RRE F
parentRRF L
)RRL M
{SS 
}TT 
publicVV 
overrideVV 
voidVV  
handleVV! '
(VV' (
RepoLendDtoVV( 3
itemVV4 8
,VV8 9
ListVV: >
<VV> ?
RepoLendDtoVV? J
>VVJ K
pVVL M
)VVM N
{WW 
RepoLendDtoXX 
foundRepoLendDtoXX ,
;XX, -
foundRepoLendDtoYY  
=YY! "
pYY# $
.YY$ %
FindYY% )
(YY) *
sYY* +
=>YY, .
sYY/ 0
.YY0 1
IntrefrcYY1 9
.YY9 :
EqualsYY: @
(YY@ A
itemYYA E
.YYE F
BelegYYF K
)YYK L
)YYL M
;YYM N
Parent[[ 
.[[ 
Error[[ 
([[ 
foundRepoLendDto[[ -
!=[[. 0
null[[1 5
)[[5 6
.\\ 
Message\\ 
(\\ 
$str\\ f
)\\f g
.]] 
Field]] 
(]] 
$str]] "
)]]" #
.^^ 
Field^^ 
(^^ 
$str^^ "
)^^" #
.__ 
Field__ 
(__ 
foundRepoLendDto__ +
,__+ ,
$str__- 7
)__7 8
.`` 
addToAlerts``  
(``  !
)``! "
;``" #
}ee 
	protectedhh 
classhh 
RPEKHandlerhh '
:hh( )
ReartHandlerhh* 6
{ii 
publicjj 
RPEKHandlerjj "
(jj" ##
AbstractRepoLendCheckerjj# :
parentjj; A
)jjA B
:jjC D
basejjE I
(jjI J
parentjjJ P
)jjP Q
{kk 
}ll 
publicnn 
overridenn 
voidnn  $
handlenn% +
(nn+ ,
RepoLendDtonn, 7
itemnn8 <
,nn< =
Listnn> B
<nnB C
RepoLendDtonnC N
>nnN O
pnnP Q
)nnQ R
{oo 
Listpp 
<pp 
RepoLendDtopp $
>pp$ %
foundRepoLendDtospp& 7
;pp7 8
foundRepoLendDtosqq %
=qq& '
pqq( )
.qq) *
FindAllqq* 1
(qq1 2
sqq2 3
=>qq4 6
sqq7 8
.qq8 9
Intrefrcqq9 A
.qqA B
EqualsqqB H
(qqH I
itemqqI M
.qqM N
BelegqqN S
)qqS T
)qqT U
;qqU V
iftt 
(tt 
foundRepoLendDtostt )
!=tt* ,
nulltt- 1
&&tt2 4
foundRepoLendDtostt5 F
.ttF G
CountttG L
>ttM N
$numttO P
)ttP Q
{uu 
varvv 
sumOfAb1vv $
=vv% &
$numvv' )
;vv) *
foreachww 
(ww  !
varww! $
elementww% ,
inww- /
foundRepoLendDtosww0 A
)wwA B
sumOfAb1wwC K
+=wwL N
elementwwO V
.wwV W
Ab1wwW Z
;wwZ [
varyy 
erroryy !
=yy" #
Parentyy$ *
.yy* +
Erroryy+ 0
(yy0 1
Mathyy1 5
.yy5 6
Absyy6 9
(yy9 :
itemyy: >
.yy> ?
Ab1yy? B
+yyC D
sumOfAb1yyE M
)yyM N
>yyO P
$numyyQ R
)yyR S
.zz 
Messagezz $
(zz$ %
$str	{{  ï
)
{{ï ñ
.|| 
Field|| "
(||" #
$str||# *
)||* +
.}} 
Field}} "
(}}" #
$str}}# *
)}}* +
;}}+ ,
foreach~~ 
(~~  !
var~~! $
element~~% ,
in~~- /
foundRepoLendDtos~~0 A
)~~A B
error !
.! "
Field" '
(' (
element( /
,/ 0
$str1 6
)6 7
;7 8
error
ÄÄ 
.
ÄÄ 
addToAlerts
ÄÄ )
(
ÄÄ) *
)
ÄÄ* +
;
ÄÄ+ ,
}
ÉÉ 
}
ÑÑ 
}
ÖÖ 
	protected
áá 
class
áá 
RXVKHandler
áá '
:
áá( )
ReartHandler
áá* 6
{
àà 
public
ââ 
RXVKHandler
ââ "
(
ââ" #%
AbstractRepoLendChecker
ââ# :
parent
ââ; A
)
ââA B
:
ââC D
base
ââE I
(
ââI J
parent
ââJ P
)
ââP Q
{
ää 
}
ãã 
public
çç 
override
çç 
void
çç  $
handle
çç% +
(
çç+ ,
RepoLendDto
çç, 7
item
çç8 <
,
çç< =
List
çç> B
<
ççB C
RepoLendDto
ççC N
>
ççN O
p
ççP Q
)
ççQ R
{
éé 
RepoLendDto
èè 
foundRepoLendDto
èè  0
;
èè0 1
foundRepoLendDto
êê $
=
êê% &
p
êê' (
.
êê( )
Find
êê) -
(
êê- .
s
êê. /
=>
êê0 2
s
êê3 4
.
êê4 5
Beleg
êê5 :
.
êê: ;
Equals
êê; A
(
êêA B
item
êêB F
.
êêF G
Intrefrc
êêG O
)
êêO P
)
êêP Q
;
êêQ R
if
íí 
(
íí 
Parent
íí 
.
íí 
Error
íí $
(
íí$ %
null
íí% )
==
íí* ,
foundRepoLendDto
íí- =
)
íí= >
.
íí> ?
Message
íí? F
(
ííF G
$str
ííG c
)
ííc d
.
ííd e
Field
ííe j
(
ííj k
$str
íík r
)
íír s
.
ìì 
Field
ìì 
(
ìì 
$str
ìì )
)
ìì) *
.
ìì* +
addToAlerts
ìì+ 6
(
ìì6 7
)
ìì7 8
)
ìì8 9
{
îî 
return
ïï 
;
ïï 
}
ññ 
Parent
òò 
.
òò 
Error
òò  
(
òò  !
foundRepoLendDto
òò! 1
.
òò1 2
Datumab
òò2 9
!=
òò: <
item
òò= A
.
òòA B
Datumab
òòB I
)
òòI J
.
ôô 
Message
ôô  
(
ôô  !
$str
ôô! X
)
ôôX Y
.
öö 
Field
öö 
(
öö 
$str
öö (
)
öö( )
.
õõ 
Field
õõ 
(
õõ 
$str
õõ )
)
õõ) *
.
úú 
Field
úú 
(
úú 
foundRepoLendDto
úú /
,
úú/ 0
$str
úú1 :
)
úú: ;
.
ùù 
addToAlerts
ùù $
(
ùù$ %
)
ùù% &
;
ùù& '
Parent
üü 
.
üü 
Error
üü  
(
üü  !
foundRepoLendDto
üü! 1
.
üü1 2
Lfzv
üü2 6
!=
üü7 9
item
üü: >
.
üü> ?
Lfzv
üü? C
)
üüC D
.
†† 
Message
††  
(
††  !
$str
††! W
)
††W X
.
°° 
Field
°° 
(
°° 
$str
°° %
)
°°% &
.
¢¢ 
Field
¢¢ 
(
¢¢ 
$str
¢¢ )
)
¢¢) *
.
££ 
Field
££ 
(
££ 
foundRepoLendDto
££ /
,
££/ 0
$str
££1 7
)
££7 8
.
§§ 
addToAlerts
§§ $
(
§§$ %
)
§§% &
;
§§& '
Parent
¶¶ 
.
¶¶ 
Error
¶¶  
(
¶¶  !
foundRepoLendDto
¶¶! 1
.
¶¶1 2
Lfzb
¶¶2 6
!=
¶¶7 9
item
¶¶: >
.
¶¶> ?
Lfzb
¶¶? C
)
¶¶C D
.
ßß 
Message
ßß  
(
ßß  !
$str
ßß! \
)
ßß\ ]
.
®® 
Field
®® 
(
®® 
$str
®® %
)
®®% &
.
©© 
Field
©© 
(
©© 
$str
©© )
)
©©) *
.
™™ 
Field
™™ 
(
™™ 
foundRepoLendDto
™™ /
,
™™/ 0
$str
™™1 7
)
™™7 8
.
´´ 
addToAlerts
´´ $
(
´´$ %
)
´´% &
;
´´& '
Parent
≠≠ 
.
≠≠ 
Error
≠≠  
(
≠≠  !
foundRepoLendDto
≠≠! 1
.
≠≠1 2
Snrk
≠≠2 6
!=
≠≠7 9
item
≠≠: >
.
≠≠> ?
Snrk
≠≠? C
)
≠≠C D
.
ÆÆ 
Message
ÆÆ  
(
ÆÆ  !
$str
ÆÆ! i
)
ÆÆi j
.
ØØ 
Field
ØØ 
(
ØØ 
$str
ØØ %
)
ØØ% &
.
∞∞ 
Field
∞∞ 
(
∞∞ 
$str
∞∞ )
)
∞∞) *
.
±± 
Field
±± 
(
±± 
foundRepoLendDto
±± /
,
±±/ 0
$str
±±1 7
)
±±7 8
.
≤≤ 
addToAlerts
≤≤ $
(
≤≤$ %
)
≤≤% &
;
≤≤& '
}
∫∫ 
}
ºº 
}
ΩΩ 	
}
ææ 
}øø ¶\
~C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Services\RepoLendTransformService.cs
	namespace		 	
BBk		
 
.		 
Rc1		 
.		 
Ricis		 
.		 

DataImport		 "
.		" #
RepoLendImport		# 1
.		1 2
Services		2 :
{

 
public 

class $
RepoLendTransformService  
:! "
ITransformService# 4
<4 5
IList5 :
<: ;
RepoLendDto; F
>F G
,G H
IListI N
<N O
TupleO T
<T U
TblRepoLendU `
,` a
TblInstrumentb o
>o p
>p q
>q r
{ 
public $
RepoLendTransformService '
(' ('
IInterestCalculationService( C&
interestCalculationServiceD ^
,^ _%
IRepoLendTransformQueries %&
repoLendTransformerQueries& @
)@ A
{ 	&
InterestCalculationService &
=' (&
interestCalculationService) C
;C D&
RepoLendTransformerQueries &
=' (&
repoLendTransformerQueries) C
;C D
} 	
private '
IInterestCalculationService +&
InterestCalculationService, F
{G H
getI L
;L M
}N O
private %
IRepoLendTransformQueries )&
RepoLendTransformerQueries* D
{E F
getG J
;J K
}L M
public 
IList 
< 
Tuple 
< 
TblRepoLend &
,& '
TblInstrument( 5
>5 6
>6 7
	Transform8 A
(A B
IListB G
<G H
RepoLendDtoH S
>S T
pU V
)V W
{ 	
var 
retval 
= 
new 
List !
<! "
Tuple" '
<' (
TblRepoLend( 3
,3 4
TblInstrument5 B
>B C
>C D
(D E
)E F
;F G
foreach 
( 
var 
item 
in  
p! "
)" #
retval 
. 
Add 
( 
new 
Tuple $
<$ %
TblRepoLend% 0
,0 1
TblInstrument2 ?
>? @
(@ A(
TransformRecordToTblRepoLend 0
(0 1
item1 5
)5 6
,6 7*
TransformRecordToTblInstrument 2
(2 3
item3 7
)7 8
)8 9
)9 :
;: ;
return   
AdjustPortfolioNos   %
(  % &
retval  & ,
)  , -
;  - .
}!! 	
private## 
TblRepoLend## (
TransformRecordToTblRepoLend## 8
(##8 9
RepoLendDto##9 D
item##E I
)##I J
{$$ 	
var&& 

repoLendNo&& 
=&& 
int&&  
.&&  !
Parse&&! &
(&&& '
item&&' +
.&&+ ,
Beleg&&, 1
)&&1 2
;&&2 3
var'' 
externalKey2'' 
='' 
item'' #
.''# $
Intrefrc''$ ,
==''- /
$str''0 2
?''3 4

repoLendNo''5 ?
:''@ A
int''B E
.''E F
Parse''F K
(''K L
item''L P
.''P Q
Intrefrc''Q Y
)''Y Z
;''Z [
var(( 
counterpart(( 
=(( &
RepoLendTransformerQueries(( 8
.((8 9%
GetCounterpartFromMapping((9 R
(((R S&
RepoLendTransformerQueries)) *
.))* +

GetFileKey))+ 5
())5 6
$str))6 D
,))D E
$str))F ]
)))] ^
,))^ _
item))` d
.))d e
Snrk))e i
)))i j
;))j k
if** 
(** 
counterpart** 
==** 
null** #
)**# $
throw++ 
new++ 
	Exception++ #
(++# $
$str++$ ?
)++? @
;++@ A
var,, 
initialPortfolioNo,, "
=,,# $&
RepoLendTransformerQueries,,% ?
.,,? @!
GetPortfolioNoFromKey,,@ U
(,,U V&
RepoLendTransformerQueries-- *
.--* +

GetFileKey--+ 5
(--5 6
$str--6 D
,--D E
$str--F [
)--[ \
,--\ ]
item--^ b
.--b c
Snr--c f
+--g h
item--i m
.--m n
Denr--n r
)--r s
;--s t
if.. 
(.. 
initialPortfolioNo.. "
==..# %
null..& *
)..* +
throw// 
new// 
	Exception// #
(//# $
$str//$ >
)//> ?
;//? @
var00 
collateralClass00 
=00  !
$str00" (
;00( )
if11 
(11 
!11 
int11 
.11 
TryParse11 
(11 &
RepoLendTransformerQueries22 *
.22* +*
GetPropertyValueByCounterparty22+ I
(22I J
(22J K
int22K N
)22N O
counterpart22P [
,22[ \
$str22] s
)22s t
,22t u
out33 
var33 
portfolioNo33 #
)33# $
)33$ %
{44 
portfolioNo55 
=55 
(55 
int55 "
)55" #
initialPortfolioNo55$ 6
;556 7
collateralClass66 
=66  !
$str66" (
;66( )
initialPortfolioNo77 "
=77# $
$num77% &
;77& '
}88 
var:: 
calendar:: 
=:: &
RepoLendTransformerQueries:: 5
.::5 6

GetFileKey::6 @
(::@ A
$str::A O
,::O P
$str::Q [
)::[ \
;::\ ]
var;;  
securityInstrumentNo;; $
=;;% &
item<< 
.<< 
Ab1<< 
<<< 
$num<< 
?<< &
RepoLendTransformerQueries<< 9
.<<9 :!
GetInstrumentNoByIsin<<: O
(<<O P
item<<P T
.<<T U
Wpnr<<U Y
)<<Y Z
:<<[ \
null<<] a
;<<a b
return>> 
new>> 
TblRepoLend>> "
{?? 

RepoLendNoAA 
=AA 

repoLendNoAA '
,AA' (
ExternalKey2BB 
=BB 
externalKey2BB +
,BB+ ,
CounterpartDD 
=DD 
counterpartDD )
,DD) *
PortfolioNoEE 
=EE 
portfolioNoEE )
,EE) *
CalendarFF 
=FF 
calendarFF #
,FF# $
DayCountGG 
=GG 
$strGG $
,GG$ %
CalcTypeHH 
=HH 
$strHH 1
,HH1 2
AmountII 
=II 
itemII 
.II 
Ab1II !
,II! "
InterestJJ 
=JJ 
itemJJ 
.JJ  
Ab1JJ  #
*JJ$ %&
InterestCalculationServiceJJ& @
.JJ@ A
CalcSimpleInterestJJA S
(JJS T
itemJJT X
.JJX Y
LfzvJJY ]
,JJ] ^
itemKK 
.KK 
LfzbKK 
,KK 
itemKK #
.KK# $
ZsKK$ &
/KK' (
$numKK) ,
,KK, -
$strKK. 7
)KK7 8
,KK8 9
InterestRateLL 
=LL 
itemLL #
.LL# $
ZsLL$ &
/LL' (
$numLL) ,
,LL, -
	TradeDateMM 
=MM 
itemMM  
.MM  !
DatumabMM! (
,MM( )
	TradeTimeNN 
=NN 
itemNN  
.NN  !
DatumabNN! (
+NN) *
itemNN+ /
.NN/ 0
ZeitabNN0 6
,NN6 7
CaptureTimeOO 
=OO 
itemOO "
.OO" #
DatumOO# (
,OO( )
	ValueDatePP 
=PP 
itemPP  
.PP  !
LfzvPP! %
,PP% &
MaturityDateQQ 
=QQ 
itemQQ #
.QQ# $
LfzbQQ$ (
,QQ( )
IsinRR 
=RR 
itemRR 
.RR 
WpnrRR  
,RR  ! 
SecurityInstrumentNoSS $
=SS% & 
securityInstrumentNoSS' ;
,SS; <
NominalTT 
=TT 
itemTT 
.TT 
NennwertTT '
,TT' (
PriceUU 
=UU 
itemUU 
.UU 
	MarktkursUU &
,UU& '
CollateralClassVV 
=VV  !
collateralClassVV" 1
,VV1 2
OtherCurrencyWW 
=WW 
nullWW  $
,WW$ %!
AmountInOtherCurrencyXX %
=XX& '
nullXX( ,
,XX, -

DealFxrateYY 
=YY 
nullYY !
,YY! "

FollowUpToZZ 
=ZZ 
nullZZ !
,ZZ! "
SettleInterest[[ 
=[[  
true[[! %
,[[% &
Warning\\ 
=\\ 
$str\\ 
,\\ 
InitialPortfolioNo^^ "
=^^# $
initialPortfolioNo^^% 7
}__ 
;__ 
}`` 	
privatebb 
TblInstrumentbb *
TransformRecordToTblInstrumentbb <
(bb< =
RepoLendDtobb= H
itembbI M
)bbM N
{cc 	
returndd 
newdd 
TblInstrumentdd $
{ee 
InstrumentTypegg 
=gg  
itemgg! %
.gg% &
Stornogg& ,
==gg- /
$strgg0 3
?gg4 5
$strgg6 =
:gg> ?
$strgg@ F
,ggF G
Currencyhh 
=hh 
itemhh 
.hh  
Whguhh  $
}jj 
;jj 
}kk 	
privatenn 
Listnn 
<nn 
Tuplenn 
<nn 
TblRepoLendnn &
,nn& '
TblInstrumentnn( 5
>nn5 6
>nn6 7
AdjustPortfolioNosnn8 J
(nnJ K
Listoo 
<oo 
Tupleoo 
<oo 
TblRepoLendoo "
,oo" #
TblInstrumentoo$ 1
>oo1 2
>oo2 3
tuplesoo4 :
)oo: ;
{pp 	
foreachqq 
(qq 
varqq 
itemqq 
inqq  
tuplesqq! '
)qq' (
ifrr 
(rr 
itemrr 
.rr 
Item1rr 
.rr 

RepoLendNorr )
!=rr* ,
itemrr- 1
.rr1 2
Item1rr2 7
.rr7 8
ExternalKey2rr8 D
&&rrE G
itemss 
.ss 
Item1ss 
.ss 
PortfolioNoss *
==ss+ -
$numss. 0
&&ss1 3
tuplestt 
.tt 
Findtt 
(tt  
stt  !
=>tt" $
stt% &
.tt& '
Item1tt' ,
.tt, -

RepoLendNott- 7
.tt7 8
Equalstt8 >
(tt> ?
itemtt? C
.ttC D
Item1ttD I
.ttI J
ExternalKey2ttJ V
)ttV W
)ttW X
.ttX Y
Item1ttY ^
.tt^ _
PortfolioNott_ j
==ttk m
$numttn p
)ttp q
itemuu 
.uu 
Item1uu 
.uu 
PortfolioNouu *
=uu+ ,
$numuu- /
;uu/ 0
returnvv 
tuplesvv 
;vv 
}ww 	
}xx 
}yy À0
öC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Step\ReadersWritersProcessors\RepoLendCheckTransformProcessor.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Step2 6
{ 
public 

class +
RepoLendCheckTransformProcessor 0
: 	#
CheckTransformProcessor
 !
<! "
IList" '
<' (
RepoLendDto( 3
>3 4
,4 5
IList6 ;
<; <
Tuple< A
<A B
TblRepoLendB M
,M N
TblInstrumentO \
>\ ]
>] ^
>^ _
{ 
private +
RepoLendCheckTransformProcessor /
(/ 0
IList 
< &
IBusinessRulesCheckService ,
<, -
IList- 2
<2 3
RepoLendDto3 >
>> ?
>? @
>@ A
preCheckServicesB R
,R S
ITransformService 
< 
IList #
<# $
RepoLendDto$ /
>/ 0
,0 1
IList2 7
<7 8
Tuple8 =
<= >
TblRepoLend> I
,I J
TblInstrumentK X
>X Y
>Y Z
>Z [
transformService\ l
,l m
IList 
< &
IBusinessRulesCheckService ,
<, -
IList- 2
<2 3
Tuple3 8
<8 9
TblRepoLend9 D
,D E
TblInstrumentF S
>S T
>T U
>U V
>V W
postCheckServicesX i
)i j
: 
base 
( 
preCheckServices #
,# $
transformService% 5
,5 6
postCheckServices7 H
)H I
{ 	
} 	
private +
RepoLendCheckTransformProcessor /
(/ 0
) 	
{ 	
} 	
public 
static +
RepoLendCheckTransformProcessor 5
GetInstance6 A
(A B
DateTimeB J
betrachtungstagK Z
)Z [
{   	
var!! 
retval!! 
=!! 
new!! +
RepoLendCheckTransformProcessor!! <
(!!< =
)!!= >
;!!> ?'
IInterestCalculationService"" '&
interestCalculationService""( B
=## 
new## +
InterestCalculationServiceDummy## 5
(##5 6
)##6 7
;##7 8%
IRepoLendTransformQueries$$ %&
repoLendTransformerQueries$$& @
=%% 
new%% $
RepoLendTransformQueries%% .
(%%. /
new%%/ 2
RicisConfiguration%%3 E
(%%E F
)%%F G
,%%G H
$str%%I T
)%%T U
;%%U V'
IRepoLendConsistencyQueries&& '&
repoLendConsistencyQueries&&( B
='' 
new'' &
RepoLendConsistencyQueries'' 0
(''0 1
)''1 2
;''2 3
IList)) 
<)) &
IBusinessRulesCheckService)) ,
<)), -
IList))- 2
<))2 3
RepoLendDto))3 >
>))> ?
>))? @
>))@ A
preCheckServices))B R
=** 
new** 
List** 
<** &
IBusinessRulesCheckService** 5
<**5 6
IList**6 ;
<**; <
RepoLendDto**< G
>**G H
>**H I
>**I J
{++ 
new,, %
RepoLendFieldCheckService,, 1
(,,1 2
retval,,2 8
.,,8 9
alerts,,9 ?
,,,? @
betrachtungstag,,A P
),,P Q
,,,Q R
new-- *
RepoLendMultiFieldCheckService-- 6
(--6 7
retval--7 =
.--= >
alerts--> D
,--D E&
interestCalculationService--F `
)--` a
,--a b
new.. +
RepoLendMultiRecordCheckService.. 7
(..7 8
retval..8 >
...> ?
alerts..? E
)..E F
}// 
;// 
ITransformService11 
<11 
IList11 #
<11# $
RepoLendDto11$ /
>11/ 0
,110 1
IList112 7
<117 8
Tuple118 =
<11= >
TblRepoLend11> I
,11I J
TblInstrument11K X
>11X Y
>11Y Z
>11Z [
transformService11\ l
=22 
new22 $
RepoLendTransformService22 .
(22. /&
interestCalculationService22/ I
,22I J&
repoLendTransformerQueries22K e
)22e f
;22f g
IList44 
<44 &
IBusinessRulesCheckService44 ,
<44, -
IList44- 2
<442 3
Tuple443 8
<448 9
TblRepoLend449 D
,44D E
TblInstrument44F S
>44S T
>44T U
>44U V
>44V W
postCheckServices44X i
=55 
new55 
List55 
<55 &
IBusinessRulesCheckService55 5
<555 6
IList556 ;
<55; <
Tuple55< A
<55A B
TblRepoLend55B M
,55M N
TblInstrument55O \
>55\ ]
>55] ^
>55^ _
>55_ `
{66 
new77 7
+RepoLendConsistencyWithDatabaseCheckService77 C
(77C D
retval77D J
.77J K
alerts77K Q
,77Q R&
repoLendConsistencyQueries77S m
)77m n
}88 
;88 
retval:: 
.:: 
preCheckServices:: #
=::$ %
preCheckServices::& 6
;::6 7
retval;; 
.;; 
transformService;; #
=;;$ %
transformService;;& 6
;;;6 7
retval<< 
.<< 
postCheckServices<< $
=<<% &
postCheckServices<<' 8
;<<8 9
return== 
retval== 
;== 
}>> 	
}?? 
}@@ ˙
úC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Step\ReadersWritersProcessors\RepoLendCsvFromArchivedFileReader.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Step2 6
.6 7$
ReadersWritersProcessors7 O
{ 
public		 

class		 -
!RepoLendCsvFromArchivedFileReader		 2
:		3 4
IReader		5 <
<		< =
IList		= B
<		B C
RepoLendDto		C N
>		N O
>		O P
{

 
private 
readonly 
DateTime !
betrachtungstag" 1
;1 2
private 
readonly 
string 
useCaseRepoLend  /
;/ 0
public -
!RepoLendCsvFromArchivedFileReader 0
(0 1
string1 7
useCaseRepoLend8 G
,G H
DateTimeI Q
betrachtungstagR a
)a b
{ 	
this 
. 
useCaseRepoLend  
=! "
useCaseRepoLend# 2
;2 3
this 
. 
betrachtungstag  
=! "
betrachtungstag# 2
;2 3
} 	
public 
IList 
< 
RepoLendDto  
>  !
Read" &
(& '
)' (
{ 	
var  
archivedFileContents $
= 
new 
ArchivedFileReader (
(( )
useCaseRepoLend) 8
,8 9
betrachtungstag: I
)I J
.J K
ReadK O
(O P
)P Q
.Q R
FileContentsR ^
;^ _
return 
RepoLendCsvReader $
.$ %&
GetCsvStringReaderInstance% ?
(? @ 
archivedFileContents@ T
)T U
.U V
ReadV Z
(Z [
)[ \
;\ ]
} 	
} 
} ü3
åC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Step\ReadersWritersProcessors\RepoLendCsvReader.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Step2 6
{ 
public		 

class		 
RepoLendCsvReader		 "
:		# $!
AbstractCsvFileReader		% :
<		: ;
RepoLendDto		; F
>		F G
{

 
public 
RepoLendCsvReader  
(  !!
IStreamReaderResource! 6
source7 =
,= >
ILineTokenizer? M
	tokenizerN W
,W X
boolY ]
	headlines^ g
=h i
truej n
)n o
:p q
baser v
(v w
source 
, 
	tokenizer 
, 
	headlines (
)( )
{ 	
} 	
	protected 
override 
RepoLendDto &#
ConvertFieldSetToObject' >
(> ?
FieldSet? G
fieldSetH P
)P Q
{ 	
return 
new 
RepoLendDto "
{ 
Guid 
= 
Guid 
. 
NewGuid #
(# $
)$ %
,% &
Ab2 
= 
fieldSet 
. 
ReadDecimal *
(* +
$str+ 0
)0 1
,1 2
Ab1 
= 
fieldSet 
. 
ReadDecimal *
(* +
$str+ 0
)0 1
,1 2
Beleg 
= 
fieldSet  
.  !

ReadString! +
(+ ,
$str, 3
)3 4
,4 5
Datum 
= 
fieldSet  
.  !
ReadDateTime! -
(- .
$str. 5
)5 6
,6 7
Datumab 
= 
fieldSet "
." #
ReadDateTime# /
(/ 0
$str0 9
)9 :
,: ;
Denr 
= 
fieldSet 
.  

ReadString  *
(* +
$str+ 1
)1 2
,2 3
Intrefrc 
= 
fieldSet #
.# $

ReadString$ .
(. /
$str/ 9
)9 :
,: ;
Lfzb 
= 
fieldSet 
.  
ReadDateTime  ,
(, -
$str- 3
)3 4
,4 5
Lfzv 
= 
fieldSet 
.  
ReadDateTime  ,
(, -
$str- 3
)3 4
,4 5
	Marktkurs 
= 
fieldSet $
.$ %
ReadDecimal% 0
(0 1
$str1 <
)< =
,= >
Nennwert 
= 
fieldSet #
.# $
ReadDecimal$ /
(/ 0
$str0 :
): ;
,; <
Reart   
=   
fieldSet    
.    !

ReadString  ! +
(  + ,
$str  , 3
)  3 4
,  4 5
Reartbez!! 
=!! 
fieldSet!! #
.!!# $

ReadString!!$ .
(!!. /
$str!!/ 9
)!!9 :
,!!: ;
Snr"" 
="" 
fieldSet"" 
."" 

ReadString"" )
("") *
$str""* /
)""/ 0
,""0 1
Snrbezk## 
=## 
fieldSet## "
.##" #

ReadString### -
(##- .
$str##. 7
)##7 8
,##8 9
Snrk$$ 
=$$ 
fieldSet$$ 
.$$  

ReadString$$  *
($$* +
$str$$+ 1
)$$1 2
,$$2 3
Statb%% 
=%% 
fieldSet%%  
.%%  !

ReadString%%! +
(%%+ ,
$str%%, 3
)%%3 4
,%%4 5
Storno&& 
=&& 
fieldSet&& !
.&&! "

ReadString&&" ,
(&&, -
$str&&- 5
)&&5 6
,&&6 7
Whgu'' 
='' 
fieldSet'' 
.''  

ReadString''  *
(''* +
$str''+ 1
)''1 2
,''2 3
Wpbezk(( 
=(( 
fieldSet(( !
.((! "

ReadString((" ,
(((, -
$str((- 5
)((5 6
,((6 7
Wpnr)) 
=)) 
fieldSet)) 
.))  

ReadString))  *
())* +
$str))+ 1
)))1 2
,))2 3
Zeitab** 
=** 
fieldSet** !
.**! "
ReadTime**" *
(*** +
$str**+ 3
)**3 4
,**4 5
Zs++ 
=++ 
fieldSet++ 
.++ 
ReadDecimal++ )
(++) *
$str++* .
)++. /
,++/ 0
Zsmodb,, 
=,, 
fieldSet,, !
.,,! "

ReadString,," ,
(,,, -
$str,,- 5
),,5 6
,,,6 7
Zstage-- 
=-- 
fieldSet-- !
.--! "
ReadInteger--" -
(--- .
$str--. 6
)--6 7
}.. 
;.. 
}// 	
public66 
static66 
RepoLendCsvReader66 '$
GetCsvFileReaderInstance66( @
(66@ A
string66A G
fileName66H P
)66P Q
{77 	
return88 
new88 
RepoLendCsvReader88 (
(88( )
new99 $
FileStreamReaderResource99 ,
(99, -
fileName99- 5
)995 6
,996 7
new:: .
"DefaultCommaSeparatedLineTokenizer:: 6
(::6 7
)::7 8
)::8 9
;::9 :
};; 	
publicBB 
staticBB 
RepoLendCsvReaderBB '&
GetCsvStringReaderInstanceBB( B
(BBB C
stringBBC I
sourceBBJ P
)BBP Q
{CC 	
returnDD 
newDD 
RepoLendCsvReaderDD (
(DD( )
newEE &
StringStreamReaderResourceEE .
(EE. /
sourceEE/ 5
)EE5 6
,EE6 7
newFF .
"DefaultCommaSeparatedLineTokenizerFF 6
(FF6 7
)FF7 8
)FF8 9
;FF9 :
}GG 	
}HH 
}II ¸;
ìC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Step\ReadersWritersProcessors\RepoLendRepositoryWriter.cs
	namespace

 	
BBk


 
.

 
Rc1

 
.

 
Ricis

 
.

 

DataImport

 "
.

" #
RepoLendImport

# 1
.

1 2
Step

2 6
{ 
public 

class $
RepoLendRepositoryWriter )
:* +
IWriter, 3
<3 4
IList4 9
<9 :
Tuple: ?
<? @
TblRepoLend@ K
,K L
TblInstrumentM Z
>Z [
>[ \
>\ ]
{ 
private $
RepoLendRepositoryWriter (
(( )
)) *
{ 	
} 	
public 
void 
Write 
( 
IList 
<  
Tuple  %
<% &
TblRepoLend& 1
,1 2
TblInstrument3 @
>@ A
>A B
tC D
)D E
{ 	
using 
( 
var 
scope 
= 
new "
TransactionScope# 3
(3 4
)4 5
)5 6
{ 
var 
tList 
= 
t 
. 
ToList $
($ %
)% &
;& '
using   
(   
var   
context   "
=  # $
new  % (
RicisEuroContext  ) 9
(  9 :
)  : ;
)  ; <
{!! 
tList"" 
."" 
ForEach"" !
(""! "
x""" #
=>""$ &
x""' (
.""( )
Item1"") .
."". /
InstrumentNo""/ ;
=""< =
context## 
.##  
TblRepoLend##  +
.##+ ,
FirstOrDefault##, :
(##: ;
y##; <
=>##= ?
y##@ A
.##A B

RepoLendNo##B L
==##M O
x##P Q
.##Q R
Item1##R W
.##W X

RepoLendNo##X b
)##b c
?##c d
.##d e
InstrumentNo##e q
??##r t
$num##u v
)##v w
;##w x
}$$ 
var'' 
updates'' 
='' 
tList'' #
.''# $
FindAll''$ +
(''+ ,
x(( 
=>(( 
x(( 
.(( 
Item1((  
.((  !
InstrumentNo((! -
!=((. 0
$num((1 2
&&((3 5
x((6 7
.((7 8
Item2((8 =
.((= >
InstrumentType((> L
==((M O
$str((P V
)((V W
;((W X
new)) 
RepositoryUpdater)) %
<))% &
TblRepoLend))& 1
,))1 2
RicisEuroContext))3 C
>))C D
())D E
)))E F
.** 
Write** 
(** 
updates** "
.**" #

ConvertAll**# -
(**- .
x**. /
=>**0 2
new**3 6
Tuple**7 <
<**< =
TblRepoLend**= H
,**H I
object**J P
>**P Q
(**Q R
x**R S
.**S T
Item1**T Y
,**Y Z
x**[ \
.**\ ]
Item1**] b
.**b c
InstrumentNo**c o
)**o p
)**p q
)**q r
;**r s
var-- 
deletes-- 
=-- 
tList-- #
.--# $
FindAll--$ +
(--+ ,
x.. 
=>.. 
x.. 
... 
Item1..  
...  !
InstrumentNo..! -
!=... 0
$num..1 2
&&..3 5
x..6 7
...7 8
Item2..8 =
...= >
InstrumentType..> L
==..M O
$str..P W
)..W X
;..X Y
new// 
RepositoryDeleter// %
<//% &
TblRepoLend//& 1
,//1 2
RicisEuroContext//3 C
>//C D
(//D E
)//E F
.00 
Write00 
(00 
deletes00 "
.00" #

ConvertAll00# -
(00- .
x00. /
=>000 2
new003 6
Tuple007 <
<00< =
TblRepoLend00= H
,00H I
object00J P
>00P Q
(00Q R
x00R S
.00S T
Item100T Y
,00Y Z
x00[ \
.00\ ]
Item100] b
.00b c
InstrumentNo00c o
)00o p
)00p q
)00q r
;00r s
deletes11 
.11 
ForEach11 
(11  
x11  !
=>11" $
x11% &
.11& '
Item211' ,
.11, -
InstrumentNo11- 9
=11: ;
x11< =
.11= >
Item111> C
.11C D
InstrumentNo11D P
)11P Q
;11Q R
new22 
RepositoryUpdater22 %
<22% &
TblInstrument22& 3
,223 4
RicisEuroContext225 E
>22E F
(22F G
)22G H
.33 
Write33 
(33 
deletes33 "
.33" #

ConvertAll33# -
(33- .
x33. /
=>330 2
new333 6
Tuple337 <
<33< =
TblInstrument33= J
,33J K
object33L R
>33R S
(33S T
x33T U
.33U V
Item233V [
,33[ \
x33] ^
.33^ _
Item233_ d
.33d e
InstrumentNo33e q
)33q r
)33r s
)33s t
;33t u
var66 
inserts66 
=66 
tList66 #
.66# $
FindAll66$ +
(66+ ,
x77 
=>77 
x77 
.77 
Item177  
.77  !
InstrumentNo77! -
==77. 0
$num771 2
&&773 5
x776 7
.777 8
Item2778 =
.77= >
InstrumentType77> L
==77M O
$str77P V
)77V W
;77W X
new88 
RepositoryInserter88 &
<88& '
TblInstrument88' 4
,884 5
RicisEuroContext886 F
>88F G
(88G H
)88H I
.99 
Write99 
(99 
inserts99 "
.99" #

ConvertAll99# -
(99- .
x99. /
=>990 2
x993 4
.994 5
Item2995 :
)99: ;
)99; <
;99< =
inserts<< 
.<< 
ForEach<< 
(<<  
x<<  !
=><<" $
x<<% &
.<<& '
Item1<<' ,
.<<, -
InstrumentNo<<- 9
=<<: ;
x<<< =
.<<= >
Item2<<> C
.<<C D
InstrumentNo<<D P
)<<P Q
;<<Q R
new== 
RepositoryInserter== &
<==& '
TblRepoLend==' 2
,==2 3
RicisEuroContext==4 D
>==D E
(==E F
)==F G
.>> 
Write>> 
(>> 
inserts>> "
.>>" #

ConvertAll>># -
(>>- .
x>>. /
=>>>0 2
x>>3 4
.>>4 5
Item1>>5 :
)>>: ;
)>>; <
;>>< =
scope@@ 
.@@ 
Complete@@ 
(@@ 
)@@  
;@@  !
}AA 
}BB 	
publicDD 
staticDD $
RepoLendRepositoryWriterDD .
GetInstanceDD/ :
(DD: ;
)DD; <
{EE 	
returnFF 
newFF $
RepoLendRepositoryWriterFF /
(FF/ 0
)FF0 1
;FF1 2
}GG 	
}HH 
}II Ó
éC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Step\RepoLendImportFromArchivedFileToJsonDtosStep.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Step2 6
{		 
public 

class 8
,RepoLendImportFromArchivedFileToJsonDtosStep =
: 	
DataImportStep
 
< 
IList 
< 
RepoLendDto *
>* +
,+ ,
IList- 2
<2 3
RepoLendDto3 >
>> ?
>? @
{ 
private 8
,RepoLendImportFromArchivedFileToJsonDtosStep <
(< =
string= C
useCaseRepoLendD S
,S T
DateTimeU ]
betrachtungstag^ m
)m n
: 
base 
( 
useCaseRepoLend "
," #
betrachtungstag$ 3
)3 4
{ 	
} 	
public 
static 8
,RepoLendImportFromArchivedFileToJsonDtosStep B
GetInstanceC N
(N O
stringO U
useCaseRepoLendV e
,e f
DateTime 
betrachtungstag $
)$ %
{ 	
var 
step 
= 
new 8
,RepoLendImportFromArchivedFileToJsonDtosStep B
(B C
useCaseRepoLendC R
,R S
betrachtungstagT c
)c d
;d e
step 
. 

InitReader 
( 
new -
!RepoLendCsvFromArchivedFileReader  A
(A B
useCaseRepoLendB Q
,Q R
betrachtungstagS b
)b c
)c d
."" 
InitProcessor"" 
("" 
new"" "'
IdentityDataImportProcessor""# >
<""> ?
IList""? D
<""D E
RepoLendDto""E P
>""P Q
>""Q R
(""R S
)""S T
)""T U
.## 

InitWriter## 
(## 
new## 
JsonDtosWriter##  .
<##. /
RepoLendDto##/ :
>##: ;
(##; <
useCaseRepoLend##< K
,##K L
betrachtungstag##M \
)##\ ]
)##] ^
;##^ _
return$$ 
step$$ 
;$$ 
}%% 	
}&& 
}'' ≤
çC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Step\RepoLendImportFromCsvFileToArchivedFileStep.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Step2 6
{ 
public		 

class		 7
+RepoLendImportFromCsvFileToArchivedFileStep		 <
:

 	
DataImportStep


 
<

 
ArchivedFile

 %
,

% &
ArchivedFile

' 3
>

3 4
{ 
private 7
+RepoLendImportFromCsvFileToArchivedFileStep ;
(; <
string< B
useCaseRepoLendC R
,R S
DateTimeT \
betrachtungstag] l
)l m
: 
base 
( 
useCaseRepoLend "
," #
betrachtungstag$ 3
)3 4
{ 	
} 	
public 
static 7
+RepoLendImportFromCsvFileToArchivedFileStep A
GetInstanceB M
(M N
stringN T
useCaseRepoLendU d
,d e
DateTime 
betrachtungstag $
,$ %
string& ,
fileName- 5
)5 6
{ 	
var 
step 
= 
new 7
+RepoLendImportFromCsvFileToArchivedFileStep A
(A B
useCaseRepoLendB Q
,Q R
betrachtungstagS b
)b c
;c d
step 
. 

InitReader 
( 
new $
TextToArchivedFileReader  8
(8 9
useCaseRepoLend9 H
,H I
betrachtungstagJ Y
,Y Z
fileName[ c
)c d
)d e
. 
InitProcessor 
( 
new "'
IdentityDataImportProcessor# >
<> ?
ArchivedFile? K
>K L
(L M
)M N
)N O
. 

InitWriter 
( 
new 
ArchivedFileWriter  2
(2 3
)3 4
)4 5
;5 6
return 
step 
; 
} 	
} 
} Í
òC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Step\RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep.cs
	namespace		 	
BBk		
 
.		 
Rc1		 
.		 
Ricis		 
.		 

DataImport		 "
.		" #
RepoLendImport		# 1
.		1 2
Step		2 6
{

 
public 

class B
6RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep G
: 	
DataImportStep
 
< 
IList 
< 
RepoLendDto *
>* +
,+ ,
IList- 2
<2 3
Tuple3 8
<8 9
TblRepoLend9 D
,D E
TblInstrumentF S
>S T
>T U
>U V
{ 
private B
6RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep F
(F G
stringG M
useCaseRepoLendN ]
,] ^
DateTime_ g
betrachtungstagh w
)w x
: 
base 
( 
useCaseRepoLend "
," #
betrachtungstag$ 3
)3 4
{ 	
} 	
public 
static B
6RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep L
GetInstanceM X
(X Y
stringY _
useCaseRepoLend` o
,o p
DateTime 
betrachtungstag $
)$ %
{ 	
var 
step 
= 
new B
6RepoLendImportFromJsonDtosToJsonEntitiesProcessingStep L
(L M
useCaseRepoLendM \
,\ ]
betrachtungstag^ m
)m n
;n o
step 
. 

InitReader 
( 
new 
JsonDtosReader  .
<. /
RepoLendDto/ :
>: ;
(; <
useCaseRepoLend< K
,K L
betrachtungstagM \
)\ ]
)] ^
. 
InitProcessor 
( +
RepoLendCheckTransformProcessor >
.> ?
GetInstance? J
(J K
betrachtungstagK Z
)Z [
)[ \
. 
InitAlertsWriter !
(! "
new" %
JsonAlertsWriter& 6
<6 7
DataImportAlert7 F
>F G
(G H
useCaseRepoLendH W
,W X
betrachtungstagY h
)h i
)i j
. 

InitWriter 
( 
new   
JsonEntitiesWriter   *
<  * +
Tuple  + 0
<  0 1
TblRepoLend  1 <
,  < =
TblInstrument  > K
>  K L
>  L M
(  M N
useCaseRepoLend  N ]
,  ] ^
betrachtungstag  _ n
)  n o
)  o p
;  p q
return!! 
step!! 
;!! 
}"" 	
}## 
}$$ º
ìC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\RepoLendImport\Step\RepoLendImportFromJsonEntitiesToRicisDatabaseStep.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
RepoLendImport# 1
.1 2
Step2 6
{ 
public		 

class		 =
1RepoLendImportFromJsonEntitiesToRicisDatabaseStep		 B
:

 	
DataImportStep


 
<

 
IList

 
<

 
Tuple

 $
<

$ %
TblRepoLend

% 0
,

0 1
TblInstrument

2 ?
>

? @
>

@ A
,

A B
IList

C H
<

H I
Tuple

I N
<

N O
TblRepoLend

O Z
,

Z [
TblInstrument

\ i
>

i j
>

j k
>

k l
{ 
private =
1RepoLendImportFromJsonEntitiesToRicisDatabaseStep A
(A B
stringB H
useCaseRepoLendI X
,X Y
DateTimeZ b
betrachtungstagc r
)r s
: 
base 
( 
useCaseRepoLend "
," #
betrachtungstag$ 3
)3 4
{ 	
} 	
public 
static =
1RepoLendImportFromJsonEntitiesToRicisDatabaseStep G
GetInstanceH S
(S T
stringT Z
useCaseRepoLend[ j
,j k
DateTime 
betrachtungstag $
)$ %
{ 	
var 
step 
= 
new =
1RepoLendImportFromJsonEntitiesToRicisDatabaseStep G
(G H
useCaseRepoLendH W
,W X
betrachtungstagY h
)h i
;i j
step 
. 

InitReader 
( 
new 
JsonEntitiesReader  2
<2 3
Tuple3 8
<8 9
TblRepoLend9 D
,D E
TblInstrumentF S
>S T
>T U
(U V
useCaseRepoLendV e
,e f
betrachtungstagg v
)v w
)w x
. 
InitProcessor 
( 
new "'
IdentityDataImportProcessor# >
<> ?
IList? D
<D E
TupleE J
<J K
TblRepoLendK V
,V W
TblInstrumentX e
>e f
>f g
>g h
(h i
)i j
)j k
. 

InitWriter 
( $
RepoLendRepositoryWriter 4
.4 5
GetInstance5 @
(@ A
)A B
)B C
;C D
return 
step 
; 
} 	
} 
} 