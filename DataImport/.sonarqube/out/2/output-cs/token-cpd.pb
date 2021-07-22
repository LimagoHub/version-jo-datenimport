Ύ	
|C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\Console\ConsoleWriter.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
ConsoleA H
{ 
public 

class 
ConsoleWriter 
< 
T  
>  !
:" #
IWriter$ +
<+ ,
T, -
>- .
{ 
public 
void 
Write 
( 
T 
t 
) 
{		 	
new

 
JsonSerializer

 
{ 

Formatting 
=  

Formatting! +
.+ ,
Indented, 4
} 
. 
	Serialize 
( 
System !
.! "
Console" )
.) *
Out* -
,- .
t/ 0
,0 1
typeof2 8
(8 9
T9 :
): ;
); <
;< =
} 	
} 
} α
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\Database\Repository\RepositoryDeleter.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
DatabaseA I
.I J

RepositoryJ T
{ 
public		 

class		 
RepositoryDeleter		 "
<		" #
E		# $
,		$ %
C		& '
>		' (
:		) *
IWriter		+ 2
<		2 3
IList		3 8
<		8 9
Tuple		9 >
<		> ?
E		? @
,		@ A
object		B H
>		H I
>		I J
>		J K
where

 
E

 
:

 
class

 
where 
C 
: 
	DbContext 
, 
new  
(  !
)! "
{ 
public 
void 
Write 
( 
IList 
<  
Tuple  %
<% &
E& '
,' (
object) /
>/ 0
>0 1
t2 3
)3 4
{ 	
using 
( 
	DbContext 
context $
=% &
new' *
C+ ,
(, -
)- .
). /
{ 
ICrudRepository 
<  
E  !
>! "
repo# '
=( )
new* -
CrudRepository. <
<< =
E= >
>> ?
(? @
context@ G
)G H
;H I
foreach 
( 
var 
tuple "
in# %
t& '
)' (
repo) -
.- .
Delete. 4
(4 5
tuple5 :
.: ;
Item2; @
)@ A
;A B
repo 
. 
Save 
( 
) 
; 
} 
} 	
} 
} —
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\Database\Repository\RepositoryInserter.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
DatabaseA I
.I J

RepositoryJ T
{ 
public 

class 
RepositoryInserter #
<# $
E$ %
,% &
C' (
>( )
:* +
IWriter, 3
<3 4
IList4 9
<9 :
E: ;
>; <
>< =
where		 
E		 
:		 
class		 
where

 
C

 
:

 
	DbContext

 
,

 
new

  
(

  !
)

! "
{ 
public 
void 
Write 
( 
IList 
<  
E  !
>! "
t# $
)$ %
{ 	
using 
( 
	DbContext 
context $
=% &
new' *
C+ ,
(, -
)- .
). /
{ 
ICrudRepository 
<  
E  !
>! "
repo# '
=( )
new* -
CrudRepository. <
<< =
E= >
>> ?
(? @
context@ G
)G H
;H I
foreach 
( 
var 
item !
in" $
t% &
)& '
repo( ,
., -
Insert- 3
(3 4
item4 8
)8 9
;9 :
repo 
. 
Save 
( 
) 
; 
} 
} 	
} 
} ί
‹C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\Database\Repository\RepositoryReader.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
DatabaseA I
.I J

RepositoryJ T
{ 
public		 

class		 
RepositoryReader		 !
<		! "
E		" #
,		# $
C		% &
>		& '
:		( )
IReader		* 1
<		1 2
IList		2 7
<		7 8
E		8 9
>		9 :
>		: ;
where

 
E

 
:

 
class

 
where 
C 
: 
	DbContext 
, 
new  
(  !
)! "
{ 
public 
IList 
< 
E 
> 
Read 
( 
) 
{ 	
using 
( 
	DbContext 
context $
=% &
new' *
C+ ,
(, -
)- .
). /
{ 
ICrudRepository 
<  
E  !
>! "
repo# '
=( )
new* -
CrudRepository. <
<< =
E= >
>> ?
(? @
context@ G
)G H
;H I
return 
repo 
. 
GetAll "
(" #
)# $
.$ %
ToList% +
(+ ,
), -
;- .
} 
} 	
} 
} ¥
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\Database\Repository\RepositoryUpdater.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
DatabaseA I
.I J

RepositoryJ T
{ 
public		 

class		 
RepositoryUpdater		 "
<		" #
E		# $
,		$ %
C		& '
>		' (
:		) *
IWriter		+ 2
<		2 3
IList		3 8
<		8 9
Tuple		9 >
<		> ?
E		? @
,		@ A
object		B H
>		H I
>		I J
>		J K
where

 
E

 
:

 
class

 
where 
C 
: 
	DbContext 
, 
new  
(  !
)! "
{ 
public 
void 
Write 
( 
IList 
<  
Tuple  %
<% &
E& '
,' (
object) /
>/ 0
>0 1
t2 3
)3 4
{ 	
using 
( 
	DbContext 
context $
=% &
new' *
C+ ,
(, -
)- .
). /
{ 
ICrudRepository 
<  
E  !
>! "
repo# '
=( )
new* -
CrudRepository. <
<< =
E= >
>> ?
(? @
context@ G
)G H
;H I
foreach 
( 
var 
tuple "
in# %
t& '
)' (
repo) -
.- .
Update. 4
(4 5
tuple5 :
.: ;
Item1; @
,@ A
tupleB G
.G H
Item2H M
)M N
;N O
repo 
. 
Save 
( 
) 
; 
} 
} 	
} 
} φ
~C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\AbstractFileReader.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
{ 
public 

abstract 
class 
AbstractFileReader ,
<, -
T- .
>. /
:0 1
IReader2 9
<9 :
T: ;
>; <
{ 
	protected 
AbstractFileReader $
($ %!
IStreamReaderResource% :
resource; C
)C D
{		 	
Resource

 
=

 
resource

 
;

  
} 	
public !
IStreamReaderResource $
Resource% -
{. /
get0 3
;3 4
}5 6
public 
abstract 
T 
Read 
( 
)  
;  !
} 
} 	
~C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\AbstractFileWriter.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
{ 
public 

abstract 
class 
AbstractFileWriter ,
<, -
T- .
>. /
:0 1
IWriter2 9
<9 :
T: ;
>; <
{ 
	protected 
AbstractFileWriter $
($ %!
IStreamWriterResource% :
resource; C
)C D
{		 	
Resource

 
=

 
resource

 
;

  
} 	
public !
IStreamWriterResource $
Resource% -
{. /
get0 3
;3 4
}5 6
public 
abstract 
void 
Write "
(" #
T# $
t% &
)& '
;' (
} 
} ‰+
…C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Csv\AbstractCsvFileReader.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
CsvF I
{ 
public		 

abstract		 
class		 !
AbstractCsvFileReader		 /
<		/ 0
T		0 1
>		1 2
:		3 4
AbstractFileReader		5 G
<		G H
List		H L
<		L M
T		M N
>		N O
>		O P
{

 
private 
StreamReader 
_reader $
;$ %
	protected !
AbstractCsvFileReader '
(' (!
IStreamReaderResource !
resource" *
,* +
ILineTokenizer 
	tokenizer $
,$ %
bool 
	headlines 
= 
false "
," #
byte 
	skipLines 
= 
$num 
) 
: 
base 
( 
resource 
) 
{ 	
	Tokenizer 
= 
	tokenizer !
;! "
	Headlines 
= 
	headlines !
;! "
	SkipLines 
= 
	skipLines !
;! "
} 	
public 
ILineTokenizer 
	Tokenizer '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
bool 
	Headlines 
{ 
get  #
;# $
}% &
public 
byte 
	SkipLines 
{ 
get  #
;# $
}% &
private 
string 
[ 
] 
Names 
{  
get! $
;$ %
set& )
;) *
}+ ,
private!! 
IEnumerable!! 
<!! 
T!! 
>!! 
	ReadLines!! (
(!!( )
)!!) *
{"" 	
string## 
line## 
;## 
line%% 
=%% 
_reader%% 
.%% 
ReadLine%% #
(%%# $
)%%$ %
;%%% &
if&& 
(&& 
	Headlines&& 
)&& 
	ReadNames'' 
('' 
	Tokenizer'' #
.''# $
Tokenize''$ ,
('', -
line''- 1
)''1 2
)''2 3
;''3 4
else(( 
yield)) 
return)) 
ConversionWrapper)) .
()). /
line))/ 3
)))3 4
;))4 5
while++ 
(++ 
(++ 
line++ 
=++ 
_reader++ "
.++" #
ReadLine++# +
(+++ ,
)++, -
)++- .
!=++/ 1
null++2 6
)++6 7
yield++8 =
return++> D
ConversionWrapper++E V
(++V W
line++W [
)++[ \
;++\ ]
},, 	
private.. 
T.. 
ConversionWrapper.. #
(..# $
string..$ *
line..+ /
)../ 0
{// 	
var00 
fieldSet00 
=00 
	Tokenizer00 $
.00$ %
Tokenize00% -
(00- .
line00. 2
)002 3
;003 4
fieldSet11 
.11 
Names11 
=11 
Names11 "
;11" #
return22 #
ConvertFieldSetToObject22 *
(22* +
fieldSet22+ 3
)223 4
;224 5
}33 	
public55 
override55 
List55 
<55 
T55 
>55 
Read55  $
(55$ %
)55% &
{66 	
using77 
(77 
_reader77 
=77 
Resource77 %
.77% &
GetStreamReader77& 5
(775 6
)776 7
)777 8
{88 
return99 
	ReadLines99  
(99  !
)99! "
.99" #
ToList99# )
(99) *
)99* +
;99+ ,
}:: 
};; 	
	protected== 
abstract== 
T== #
ConvertFieldSetToObject== 4
(==4 5
FieldSet==5 =
fieldSet==> F
)==F G
;==G H
private?? 
void?? 
	ReadNames?? 
(?? 
FieldSet?? '
set??( +
)??+ ,
{@@ 	
varAA 
namesAA 
=AA 
newAA 
ListAA  
<AA  !
stringAA! '
>AA' (
(AA( )
)AA) *
;AA* +
forBB 
(BB 
varBB 
iBB 
=BB 
$numBB 
;BB 
iBB 
<BB 
setBB  #
.BB# $
ColumnCountBB$ /
;BB/ 0
iBB1 2
++BB2 4
)BB4 5
namesBB6 ;
.BB; <
AddBB< ?
(BB? @
setBB@ C
.BBC D

ReadStringBBD N
(BBN O
iBBO P
)BBP Q
)BBQ R
;BBR S
NamesCC 
=CC 
namesCC 
.CC 
ToArrayCC !
(CC! "
)CC" #
;CC# $
}DD 	
}EE 
}FF Ξ
 C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Csv\LineTokenizer\DefaultCommaSeparatedLineTokenizer.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
CsvF I
.I J
LineTokenizerJ W
{ 
public 

class .
"DefaultCommaSeparatedLineTokenizer 3
:4 5
ILineTokenizer6 D
{ 
public .
"DefaultCommaSeparatedLineTokenizer 1
(1 2
string2 8
	delimiter9 B
=C D
$strE H
)H I
{ 	
	Delimiter 
= 
	delimiter !
;! "
} 	
public

 
string

 
	Delimiter

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
virtual 
FieldSet 
Tokenize  (
(( )
string) /
line0 4
)4 5
{ 	
return 
new 
FieldSet 
(  
line  $
.$ %
Split% *
(* +
	Delimiter+ 4
)4 5
)5 6
;6 7
} 	
} 
} ύπ
†C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Csv\LineTokenizer\FieldSet.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
CsvF I
.I J
LineTokenizerJ W
{ 
public 

class 
FieldSet 
{ 
private		 
readonly		 
CultureInfo		 $
_defaultCultureInfo		% 8
=		9 :
CultureInfo		; F
.		F G
InvariantCulture		G W
;		W X
private

 
readonly

 
CultureInfo

 $&
_defaultCurrentCultureInfo

% ?
=

@ A
CultureInfo

B M
.

M N
CurrentCulture

N \
;

\ ]
private 
readonly 
NumberFormatInfo )$
_defaultNumberFormatInfo* B
=C D
newE H
NumberFormatInfoI Y
(Y Z
)Z [
;[ \
public 
FieldSet 
( 
string 
[ 
]  
tokens! '
,' (
string) /
[/ 0
]0 1
names2 7
=8 9
null: >
)> ?
{ 	
Tokens 
= 
tokens 
; 
Names 
= 
names 
?? 
new  
string! '
[' (
$num( )
]) *
;* +
} 	
private 
string 
[ 
] 
Tokens 
{  !
get" %
;% &
}' (
public 
int 
ColumnCount 
=> !
Tokens" (
.( )
Length) /
;/ 0
public 
string 
[ 
] 
Names 
{ 
set  #
;# $
get% (
;( )
}* +
public 
string 

ReadString  
(  !
int! $
position% -
,- .
string/ 5
defaultValue6 B
=C D
nullE I
,I J
boolK O
trimP T
=U V
trueW [
)[ \
{ 	
if 
( 
Tokens 
[ 
position 
]  
!=! #
null$ (
)( )
return 
trim 
? 
Tokens $
[$ %
position% -
]- .
.. /
Trim/ 3
(3 4
)4 5
:6 7
Tokens8 >
[> ?
position? G
]G H
;H I
return 
defaultValue 
;  
} 	
public 
decimal 
ReadDecimal "
(" #
int# &
position' /
,/ 0
decimal1 8
?8 9
defaultValue: F
=G H
decimalI P
.P Q
ZeroQ U
,U V
NumberStyles   
styles   
=    !
NumberStyles  " .
.  . /
Float  / 4
,  4 5
CultureInfo  6 A
cultureInfo  B M
=  N O
null  P T
)  T U
{!! 	
cultureInfo"" 
="" 
cultureInfo"" %
??""& (&
_defaultCurrentCultureInfo"") C
;""C D
return## 
Tokens## 
[## 
position## "
]##" #
!=##$ &
null##' +
?$$ 
decimal$$ 
.$$ 
Parse$$ 
($$  
Tokens$$  &
[$$& '
position$$' /
]$$/ 0
,$$0 1
styles$$2 8
,$$8 9
cultureInfo$$: E
)$$E F
:%% 
defaultValue%% 
??%% !
throw%%" '
new%%( +!
ArgumentNullException%%, A
(%%A B
$str%%B M
+%%N O
position%%P X
)%%X Y
;%%Y Z
}&& 	
public(( 
DateTime(( 
ReadDateTime(( $
((($ %
int((% (
position(() 1
,((1 2
DateTime((3 ;
?((; <
defaultValue((= I
=((J K
null((L P
,((P Q
string((R X
format((Y _
=((` a
$str((b l
,((l m
CultureInfo)) 
cultureInfo)) #
=))$ %
null))& *
)))* +
{** 	
cultureInfo++ 
=++ 
cultureInfo++ %
??++& (
_defaultCultureInfo++) <
;++< =
return,, 
Tokens,, 
[,, 
position,, "
],," #
!=,,$ &
null,,' +
?-- 
DateTime-- 
.-- 

ParseExact-- %
(--% &
Tokens--& ,
[--, -
position--- 5
]--5 6
,--6 7
format--8 >
,--> ?
cultureInfo--@ K
)--K L
:.. 
defaultValue.. 
??.. !
throw.." '
new..( +!
ArgumentNullException.., A
(..A B
$str..B M
+..N O
position..P X
)..X Y
;..Y Z
}// 	
public11 
TimeSpan11 
ReadTime11  
(11  !
int11! $
position11% -
,11- .
TimeSpan11/ 7
?117 8
defaultValue119 E
=11F G
null11H L
,11L M
string11N T
format11U [
=11\ ]
$str11^ h
,11h i
CultureInfo22 
cultureInfo22 #
=22$ %
null22& *
)22* +
{33 	
cultureInfo44 
=44 
cultureInfo44 %
??44& (
_defaultCultureInfo44) <
;44< =
if55 
(55 
Tokens55 
[55 
position55 
]55  
==55! #
null55$ (
)55( )
return66 
defaultValue66 #
??66$ &
throw66' ,
new66- 0!
ArgumentNullException661 F
(66F G
$str66G R
+66S T
position66U ]
)66] ^
;66^ _
var77 
dateTime77 
=77 
DateTime77 #
.77# $

ParseExact77$ .
(77. /
Tokens77/ 5
[775 6
position776 >
]77> ?
,77? @
format77A G
,77G H
cultureInfo77I T
)77T U
;77U V
return88 
dateTime88 
-88 
dateTime88 &
.88& '
Date88' +
;88+ ,
}99 	
public;; 

BigInteger;; 
ReadBigInteger;; (
(;;( )
int;;) ,
position;;- 5
,;;5 6

BigInteger;;7 A
?;;A B
defaultValue;;C O
=;;P Q
null;;R V
,;;V W
NumberFormatInfo<< 
numberFormat<< )
=<<* +
null<<, 0
)<<0 1
{== 	
numberFormat>> 
=>> 
numberFormat>> '
??>>( *$
_defaultNumberFormatInfo>>+ C
;>>C D
return?? 
Tokens?? 
[?? 
position?? "
]??" #
!=??$ &
null??' +
?@@ 

BigInteger@@ 
.@@ 
Parse@@ "
(@@" #
Tokens@@# )
[@@) *
position@@* 2
]@@2 3
,@@3 4
numberFormat@@5 A
)@@A B
:AA 
defaultValueAA 
??AA !
throwAA" '
newAA( +!
ArgumentNullExceptionAA, A
(AAA B
$strAAB M
+AAN O
positionAAP X
)AAX Y
;AAY Z
}BB 	
publicDD 
intDD 
ReadIntegerDD 
(DD 
intDD "
positionDD# +
,DD+ ,
intDD- 0
?DD0 1
defaultValueDD2 >
=DD? @
nullDDA E
)DDE F
{EE 	
varFF 
successFF 
=FF 
intFF 
.FF 
TryParseFF &
(FF& '
TokensFF' -
[FF- .
positionFF. 6
]FF6 7
,FF7 8
outFF9 <
varFF= @
returnValueFFA L
)FFL M
;FFM N
returnGG 
successGG 
?GG 
returnValueGG (
:GG) *
defaultValueGG+ 7
??GG8 :
throwGG; @
newGGA D!
ArgumentNullExceptionGGE Z
(GGZ [
$strGG[ f
+GGg h
positionGGi q
)GGq r
;GGr s
}HH 	
publicJJ 
longJJ 
ReadLongJJ 
(JJ 
intJJ  
positionJJ! )
,JJ) *
longJJ+ /
?JJ/ 0
defaultValueJJ1 =
=JJ> ?
nullJJ@ D
)JJD E
{KK 	
varLL 
successLL 
=LL 
longLL 
.LL 
TryParseLL '
(LL' (
TokensLL( .
[LL. /
positionLL/ 7
]LL7 8
,LL8 9
outLL: =
varLL> A
returnValueLLB M
)LLM N
;LLN O
returnMM 
successMM 
?MM 
returnValueMM (
:MM) *
defaultValueMM+ 7
??MM8 :
throwMM; @
newMMA D!
ArgumentNullExceptionMME Z
(MMZ [
$strMM[ f
+MMg h
positionMMi q
)MMq r
;MMr s
}NN 	
publicPP 
bytePP 
ReadBytePP 
(PP 
intPP  
positionPP! )
,PP) *
bytePP+ /
?PP/ 0
defaultValuePP1 =
=PP> ?
nullPP@ D
)PPD E
{QQ 	
varRR 
successRR 
=RR 
byteRR 
.RR 
TryParseRR '
(RR' (
TokensRR( .
[RR. /
positionRR/ 7
]RR7 8
,RR8 9
outRR: =
varRR> A
returnValueRRB M
)RRM N
;RRN O
returnSS 
successSS 
?SS 
returnValueSS (
:SS) *
defaultValueSS+ 7
??SS8 :
throwSS; @
newSSA D!
ArgumentNullExceptionSSE Z
(SSZ [
$strSS[ f
+SSg h
positionSSi q
)SSq r
;SSr s
}TT 	
publicVV 
sbyteVV 
	ReadSByteVV 
(VV 
intVV "
positionVV# +
,VV+ ,
sbyteVV- 2
?VV2 3
defaultValueVV4 @
=VVA B
nullVVC G
)VVG H
{WW 	
varXX 
successXX 
=XX 
sbyteXX 
.XX  
TryParseXX  (
(XX( )
TokensXX) /
[XX/ 0
positionXX0 8
]XX8 9
,XX9 :
outXX; >
varXX? B
returnValueXXC N
)XXN O
;XXO P
returnYY 
successYY 
?YY 
returnValueYY (
:YY) *
defaultValueYY+ 7
??YY8 :
throwYY; @
newYYA D!
ArgumentNullExceptionYYE Z
(YYZ [
$strYY[ f
+YYg h
positionYYi q
)YYq r
;YYr s
}ZZ 	
public\\ 
bool\\ 
ReadBool\\ 
(\\ 
int\\  
position\\! )
,\\) *
bool\\+ /
?\\/ 0
defaultValue\\1 =
=\\> ?
null\\@ D
)\\D E
{]] 	
var^^ 
success^^ 
=^^ 
bool^^ 
.^^ 
TryParse^^ '
(^^' (
Tokens^^( .
[^^. /
position^^/ 7
]^^7 8
,^^8 9
out^^: =
var^^> A
returnValue^^B M
)^^M N
;^^N O
return__ 
success__ 
?__ 
returnValue__ (
:__) *
defaultValue__+ 7
??__8 :
throw__; @
new__A D!
ArgumentNullException__E Z
(__Z [
$str__[ f
+__g h
position__i q
)__q r
;__r s
}`` 	
publicbb 
shortbb 
	ReadShortbb 
(bb 
intbb "
positionbb# +
,bb+ ,
shortbb- 2
?bb2 3
defaultValuebb4 @
=bbA B
nullbbC G
)bbG H
{cc 	
vardd 
successdd 
=dd 
shortdd 
.dd  
TryParsedd  (
(dd( )
Tokensdd) /
[dd/ 0
positiondd0 8
]dd8 9
,dd9 :
outdd; >
vardd? B
returnValueddC N
)ddN O
;ddO P
returnee 
successee 
?ee 
returnValueee (
:ee) *
defaultValueee+ 7
??ee8 :
throwee; @
neweeA D!
ArgumentNullExceptioneeE Z
(eeZ [
$stree[ f
+eeg h
positioneei q
)eeq r
;eer s
}ff 	
publichh 
doublehh 

ReadDoublehh  
(hh  !
inthh! $
positionhh% -
,hh- .
doublehh/ 5
?hh5 6
defaultValuehh7 C
=hhD E
nullhhF J
,hhJ K
CultureInfohhL W
cultureInfohhX c
=hhd e
nullhhf j
)hhj k
{ii 	
cultureInfojj 
=jj 
cultureInfojj %
??jj& (
_defaultCultureInfojj) <
;jj< =
returnkk 
Tokenskk 
[kk 
positionkk "
]kk" #
!=kk$ &
nullkk' +
?ll 
doublell 
.ll 
Parsell 
(ll 
Tokensll %
[ll% &
positionll& .
]ll. /
,ll/ 0
cultureInfoll1 <
)ll< =
:mm 
defaultValuemm 
??mm !
throwmm" '
newmm( +!
ArgumentNullExceptionmm, A
(mmA B
$strmmB M
+mmN O
positionmmP X
)mmX Y
;mmY Z
}nn 	
publicpp 
floatpp 
	ReadFloatpp 
(pp 
intpp "
positionpp# +
,pp+ ,
floatpp- 2
?pp2 3
defaultValuepp4 @
=ppA B
nullppC G
,ppG H
CultureInfoppI T
cultureInfoppU `
=ppa b
nullppc g
)ppg h
{qq 	
cultureInforr 
=rr 
cultureInforr %
??rr& (
_defaultCultureInforr) <
;rr< =
returnss 
Tokensss 
[ss 
positionss "
]ss" #
!=ss$ &
nullss' +
?tt 
floattt 
.tt 
Parsett 
(tt 
Tokenstt $
[tt$ %
positiontt% -
]tt- .
,tt. /
cultureInfott0 ;
)tt; <
:uu 
defaultValueuu 
??uu !
throwuu" '
newuu( +!
ArgumentNullExceptionuu, A
(uuA B
$struuB M
+uuN O
positionuuP X
)uuX Y
;uuY Z
}vv 	
publicxx 
charxx 
ReadCharxx 
(xx 
intxx  
positionxx! )
,xx) *
charxx+ /
?xx/ 0
defaultValuexx1 =
=xx> ?
nullxx@ D
)xxD E
{yy 	
varzz 
successzz 
=zz 
charzz 
.zz 
TryParsezz '
(zz' (
Tokenszz( .
[zz. /
positionzz/ 7
]zz7 8
,zz8 9
outzz: =
varzz> A
returnValuezzB M
)zzM N
;zzN O
return{{ 
success{{ 
?{{ 
returnValue{{ (
:{{) *
defaultValue{{+ 7
??{{8 :
throw{{; @
new{{A D!
ArgumentNullException{{E Z
({{Z [
$str{{[ f
+{{g h
position{{i q
){{q r
;{{r s
}|| 	
public~~ 
ushort~~ 

ReadUShort~~  
(~~  !
int~~! $
position~~% -
,~~- .
ushort~~/ 5
?~~5 6
defaultValue~~7 C
=~~D E
null~~F J
)~~J K
{ 	
var
€€ 
success
€€ 
=
€€ 
ushort
€€  
.
€€  !
TryParse
€€! )
(
€€) *
Tokens
€€* 0
[
€€0 1
position
€€1 9
]
€€9 :
,
€€: ;
out
€€< ?
var
€€@ C
returnValue
€€D O
)
€€O P
;
€€P Q
return
 
success
 
?
 
returnValue
 (
:
) *
defaultValue
+ 7
??
8 :
throw
; @
new
A D#
ArgumentNullException
E Z
(
Z [
$str
[ f
+
g h
position
i q
)
q r
;
r s
}
‚‚ 	
public
„„ 
uint
„„ 
ReadUInt
„„ 
(
„„ 
int
„„  
position
„„! )
,
„„) *
uint
„„+ /
?
„„/ 0
defaultValue
„„1 =
=
„„> ?
null
„„@ D
)
„„D E
{
…… 	
var
†† 
success
†† 
=
†† 
uint
†† 
.
†† 
TryParse
†† '
(
††' (
Tokens
††( .
[
††. /
position
††/ 7
]
††7 8
,
††8 9
out
††: =
var
††> A
returnValue
††B M
)
††M N
;
††N O
return
‡‡ 
success
‡‡ 
?
‡‡ 
returnValue
‡‡ (
:
‡‡) *
defaultValue
‡‡+ 7
??
‡‡8 :
throw
‡‡; @
new
‡‡A D#
ArgumentNullException
‡‡E Z
(
‡‡Z [
$str
‡‡[ f
+
‡‡g h
position
‡‡i q
)
‡‡q r
;
‡‡r s
}
 	
public
 
ulong
 
	ReadULong
 
(
 
int
 "
position
# +
,
+ ,
ulong
- 2
?
2 3
defaultValue
4 @
=
A B
null
C G
)
G H
{
‹‹ 	
var
 
success
 
=
 
ulong
 
.
  
TryParse
  (
(
( )
Tokens
) /
[
/ 0
position
0 8
]
8 9
,
9 :
out
; >
var
? B
returnValue
C N
)
N O
;
O P
return
 
success
 
?
 
returnValue
 (
:
) *
defaultValue
+ 7
??
8 :
throw
; @
new
A D#
ArgumentNullException
E Z
(
Z [
$str
[ f
+
g h
position
i q
)
q r
;
r s
}
 	
public
 
string
 

ReadString
  
(
  !
string
! '
name
( ,
,
, -
string
. 4
defaultValue
5 A
=
B C
null
D H
,
H I
bool
J N
trim
O S
=
T U
true
V Z
)
Z [
{
‘‘ 	
return
’’ 

ReadString
’’ 
(
’’ 
Array
’’ #
.
’’# $
IndexOf
’’$ +
(
’’+ ,
Names
’’, 1
,
’’1 2
name
’’3 7
)
’’7 8
,
’’8 9
defaultValue
’’: F
,
’’F G
trim
’’H L
)
’’L M
;
’’M N
}
““ 	
public
–– 
decimal
–– 
ReadDecimal
–– "
(
––" #
string
––# )
name
––* .
,
––. /
decimal
––0 7
?
––7 8
defaultValue
––9 E
=
––F G
decimal
––H O
.
––O P
Zero
––P T
,
––T U
NumberStyles
—— 
styles
—— 
=
——  !
NumberStyles
——" .
.
——. /
Float
——/ 4
,
——4 5
CultureInfo
——6 A
cultureInfo
——B M
=
——N O
null
——P T
)
——T U
{
 	
return
™™ 
ReadDecimal
™™ 
(
™™ 
Array
™™ $
.
™™$ %
IndexOf
™™% ,
(
™™, -
Names
™™- 2
,
™™2 3
name
™™4 8
)
™™8 9
,
™™9 :
defaultValue
™™; G
,
™™G H
styles
™™I O
,
™™O P
cultureInfo
™™Q \
)
™™\ ]
;
™™] ^
}
 	
public
 
DateTime
 
ReadDateTime
 $
(
$ %
string
% +
name
, 0
,
0 1
DateTime
2 :
?
: ;
defaultValue
< H
=
I J
null
K O
,
O P
string
Q W
format
X ^
=
_ `
$str
a k
,
k l
CultureInfo
 
cultureInfo
 #
=
$ %
null
& *
)
* +
{
 	
return
 
ReadDateTime
 
(
  
Array
  %
.
% &
IndexOf
& -
(
- .
Names
. 3
,
3 4
name
5 9
)
9 :
,
: ;
defaultValue
< H
,
H I
format
J P
,
P Q
cultureInfo
R ]
)
] ^
;
^ _
}
   	
public
ΆΆ 
TimeSpan
ΆΆ 
ReadTime
ΆΆ  
(
ΆΆ  !
string
ΆΆ! '
name
ΆΆ( ,
,
ΆΆ, -
TimeSpan
ΆΆ. 6
?
ΆΆ6 7
defaultValue
ΆΆ8 D
=
ΆΆE F
null
ΆΆG K
,
ΆΆK L
string
ΆΆM S
format
ΆΆT Z
=
ΆΆ[ \
$str
ΆΆ] g
,
ΆΆg h
CultureInfo
££ 
cultureInfo
££ #
=
££$ %
null
££& *
)
££* +
{
¤¤ 	
return
¥¥ 
ReadTime
¥¥ 
(
¥¥ 
Array
¥¥ !
.
¥¥! "
IndexOf
¥¥" )
(
¥¥) *
Names
¥¥* /
,
¥¥/ 0
name
¥¥1 5
)
¥¥5 6
,
¥¥6 7
defaultValue
¥¥8 D
,
¥¥D E
format
¥¥F L
,
¥¥L M
cultureInfo
¥¥N Y
)
¥¥Y Z
;
¥¥Z [
}
¦¦ 	
public
¨¨ 

BigInteger
¨¨ 
ReadBigInteger
¨¨ (
(
¨¨( )
string
¨¨) /
name
¨¨0 4
,
¨¨4 5

BigInteger
¨¨6 @
?
¨¨@ A
defaultValue
¨¨B N
=
¨¨O P
null
¨¨Q U
,
¨¨U V
NumberFormatInfo
©© 
numberFormat
©© )
=
©©* +
null
©©, 0
)
©©0 1
{
ªª 	
return
«« 
ReadBigInteger
«« !
(
««! "
Array
««" '
.
««' (
IndexOf
««( /
(
««/ 0
Names
««0 5
,
««5 6
name
««7 ;
)
««; <
,
««< =
defaultValue
««> J
,
««J K
numberFormat
««L X
)
««X Y
;
««Y Z
}
¬¬ 	
public
®® 
int
®® 
ReadInteger
®® 
(
®® 
string
®® %
name
®®& *
,
®®* +
int
®®, /
?
®®/ 0
defaultValue
®®1 =
=
®®> ?
null
®®@ D
)
®®D E
{
―― 	
return
°° 
ReadInteger
°° 
(
°° 
Array
°° $
.
°°$ %
IndexOf
°°% ,
(
°°, -
Names
°°- 2
,
°°2 3
name
°°4 8
)
°°8 9
,
°°9 :
defaultValue
°°; G
)
°°G H
;
°°H I
}
±± 	
public
³³ 
long
³³ 
ReadLong
³³ 
(
³³ 
string
³³ #
name
³³$ (
,
³³( )
long
³³* .
?
³³. /
defaultValue
³³0 <
=
³³= >
null
³³? C
)
³³C D
{
΄΄ 	
return
µµ 
ReadLong
µµ 
(
µµ 
Array
µµ !
.
µµ! "
IndexOf
µµ" )
(
µµ) *
Names
µµ* /
,
µµ/ 0
name
µµ1 5
)
µµ5 6
,
µµ6 7
defaultValue
µµ8 D
)
µµD E
;
µµE F
}
¶¶ 	
public
ΈΈ 
byte
ΈΈ 
ReadByte
ΈΈ 
(
ΈΈ 
string
ΈΈ #
name
ΈΈ$ (
,
ΈΈ( )
byte
ΈΈ* .
?
ΈΈ. /
defaultValue
ΈΈ0 <
=
ΈΈ= >
null
ΈΈ? C
)
ΈΈC D
{
ΉΉ 	
return
ΊΊ 
ReadByte
ΊΊ 
(
ΊΊ 
Array
ΊΊ !
.
ΊΊ! "
IndexOf
ΊΊ" )
(
ΊΊ) *
Names
ΊΊ* /
,
ΊΊ/ 0
name
ΊΊ1 5
)
ΊΊ5 6
,
ΊΊ6 7
defaultValue
ΊΊ8 D
)
ΊΊD E
;
ΊΊE F
}
»» 	
public
½½ 
sbyte
½½ 
	ReadSByte
½½ 
(
½½ 
string
½½ %
name
½½& *
,
½½* +
sbyte
½½, 1
?
½½1 2
defaultValue
½½3 ?
=
½½@ A
null
½½B F
)
½½F G
{
ΎΎ 	
return
ΏΏ 
	ReadSByte
ΏΏ 
(
ΏΏ 
Array
ΏΏ "
.
ΏΏ" #
IndexOf
ΏΏ# *
(
ΏΏ* +
Names
ΏΏ+ 0
,
ΏΏ0 1
name
ΏΏ2 6
)
ΏΏ6 7
,
ΏΏ7 8
defaultValue
ΏΏ9 E
)
ΏΏE F
;
ΏΏF G
}
ΐΐ 	
public
ΒΒ 
bool
ΒΒ 
ReadBool
ΒΒ 
(
ΒΒ 
string
ΒΒ #
name
ΒΒ$ (
,
ΒΒ( )
bool
ΒΒ* .
?
ΒΒ. /
defaultValue
ΒΒ0 <
=
ΒΒ= >
null
ΒΒ? C
)
ΒΒC D
{
ΓΓ 	
return
ΔΔ 
ReadBool
ΔΔ 
(
ΔΔ 
Array
ΔΔ !
.
ΔΔ! "
IndexOf
ΔΔ" )
(
ΔΔ) *
Names
ΔΔ* /
,
ΔΔ/ 0
name
ΔΔ1 5
)
ΔΔ5 6
,
ΔΔ6 7
defaultValue
ΔΔ8 D
)
ΔΔD E
;
ΔΔE F
}
ΕΕ 	
public
ΗΗ 
short
ΗΗ 
	ReadShort
ΗΗ 
(
ΗΗ 
string
ΗΗ %
name
ΗΗ& *
,
ΗΗ* +
short
ΗΗ, 1
?
ΗΗ1 2
defaultValue
ΗΗ3 ?
=
ΗΗ@ A
null
ΗΗB F
)
ΗΗF G
{
ΘΘ 	
return
ΙΙ 
	ReadShort
ΙΙ 
(
ΙΙ 
Array
ΙΙ "
.
ΙΙ" #
IndexOf
ΙΙ# *
(
ΙΙ* +
Names
ΙΙ+ 0
,
ΙΙ0 1
name
ΙΙ2 6
)
ΙΙ6 7
,
ΙΙ7 8
defaultValue
ΙΙ9 E
)
ΙΙE F
;
ΙΙF G
}
ΚΚ 	
public
ΜΜ 
double
ΜΜ 

ReadDouble
ΜΜ  
(
ΜΜ  !
string
ΜΜ! '
name
ΜΜ( ,
,
ΜΜ, -
double
ΜΜ. 4
?
ΜΜ4 5
defaultValue
ΜΜ6 B
=
ΜΜC D
null
ΜΜE I
,
ΜΜI J
CultureInfo
ΜΜK V
cultureInfo
ΜΜW b
=
ΜΜc d
null
ΜΜe i
)
ΜΜi j
{
ΝΝ 	
return
ΞΞ 

ReadDouble
ΞΞ 
(
ΞΞ 
Array
ΞΞ #
.
ΞΞ# $
IndexOf
ΞΞ$ +
(
ΞΞ+ ,
Names
ΞΞ, 1
,
ΞΞ1 2
name
ΞΞ3 7
)
ΞΞ7 8
,
ΞΞ8 9
defaultValue
ΞΞ: F
,
ΞΞF G
cultureInfo
ΞΞH S
)
ΞΞS T
;
ΞΞT U
}
ΟΟ 	
public
ΡΡ 
float
ΡΡ 
	ReadFloat
ΡΡ 
(
ΡΡ 
string
ΡΡ %
name
ΡΡ& *
,
ΡΡ* +
float
ΡΡ, 1
?
ΡΡ1 2
defaultValue
ΡΡ3 ?
=
ΡΡ@ A
null
ΡΡB F
,
ΡΡF G
CultureInfo
ΡΡH S
cultureInfo
ΡΡT _
=
ΡΡ` a
null
ΡΡb f
)
ΡΡf g
{
ÒÒ 	
return
ΣΣ 
	ReadFloat
ΣΣ 
(
ΣΣ 
Array
ΣΣ "
.
ΣΣ" #
IndexOf
ΣΣ# *
(
ΣΣ* +
Names
ΣΣ+ 0
,
ΣΣ0 1
name
ΣΣ2 6
)
ΣΣ6 7
,
ΣΣ7 8
defaultValue
ΣΣ9 E
,
ΣΣE F
cultureInfo
ΣΣG R
)
ΣΣR S
;
ΣΣS T
}
ΤΤ 	
public
ΦΦ 
char
ΦΦ 
ReadChar
ΦΦ 
(
ΦΦ 
string
ΦΦ #
name
ΦΦ$ (
,
ΦΦ( )
char
ΦΦ* .
?
ΦΦ. /
defaultValue
ΦΦ0 <
=
ΦΦ= >
null
ΦΦ? C
)
ΦΦC D
{
ΧΧ 	
return
ΨΨ 
ReadChar
ΨΨ 
(
ΨΨ 
Array
ΨΨ !
.
ΨΨ! "
IndexOf
ΨΨ" )
(
ΨΨ) *
Names
ΨΨ* /
,
ΨΨ/ 0
name
ΨΨ1 5
)
ΨΨ5 6
,
ΨΨ6 7
defaultValue
ΨΨ8 D
)
ΨΨD E
;
ΨΨE F
}
ΩΩ 	
public
ΫΫ 
ushort
ΫΫ 

ReadUShort
ΫΫ  
(
ΫΫ  !
string
ΫΫ! '
name
ΫΫ( ,
,
ΫΫ, -
ushort
ΫΫ. 4
?
ΫΫ4 5
defaultValue
ΫΫ6 B
=
ΫΫC D
null
ΫΫE I
)
ΫΫI J
{
άά 	
return
έέ 

ReadUShort
έέ 
(
έέ 
Array
έέ #
.
έέ# $
IndexOf
έέ$ +
(
έέ+ ,
Names
έέ, 1
,
έέ1 2
name
έέ3 7
)
έέ7 8
,
έέ8 9
defaultValue
έέ: F
)
έέF G
;
έέG H
}
ήή 	
public
ΰΰ 
uint
ΰΰ 
ReadUInt
ΰΰ 
(
ΰΰ 
string
ΰΰ #
name
ΰΰ$ (
,
ΰΰ( )
uint
ΰΰ* .
?
ΰΰ. /
defaultValue
ΰΰ0 <
=
ΰΰ= >
null
ΰΰ? C
)
ΰΰC D
{
αα 	
return
ββ 
ReadUInt
ββ 
(
ββ 
Array
ββ !
.
ββ! "
IndexOf
ββ" )
(
ββ) *
Names
ββ* /
,
ββ/ 0
name
ββ1 5
)
ββ5 6
,
ββ6 7
defaultValue
ββ8 D
)
ββD E
;
ββE F
}
γγ 	
public
εε 
ulong
εε 
	ReadULong
εε 
(
εε 
string
εε %
name
εε& *
,
εε* +
ulong
εε, 1
?
εε1 2
defaultValue
εε3 ?
=
εε@ A
null
εεB F
)
εεF G
{
ζζ 	
return
ηη 
	ReadULong
ηη 
(
ηη 
Array
ηη "
.
ηη" #
IndexOf
ηη# *
(
ηη* +
Names
ηη+ 0
,
ηη0 1
name
ηη2 6
)
ηη6 7
,
ηη7 8
defaultValue
ηη9 E
)
ηηE F
;
ηηF G
}
θθ 	
}
ιι 
}κκ Α
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Csv\LineTokenizer\ILineTokenizer.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
CsvF I
.I J
LineTokenizerJ W
{ 
public 

	interface 
ILineTokenizer #
{ 
FieldSet 
Tokenize 
( 
string  
line! %
)% &
;& '
} 
} ‰
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Json\JsonFileReader.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
JsonF J
{ 
public 

class 
JsonFileReader 
<  
T  !
>! "
:# $
AbstractFileReader% 7
<7 8
T8 9
>9 :
where 
T 
: 
class 
{ 
public		 
JsonFileReader		 
(		 !
IStreamReaderResource		 3
resource		4 <
)		< =
:		> ?
base		@ D
(		D E
resource		E M
)		M N
{

 	
} 	
public 
override 
T 
Read 
( 
)  
{ 	
using 
( 
var 
streamReader #
=$ %
Resource& .
.. /
GetStreamReader/ >
(> ?
)? @
)@ A
{ 
return 
( 
T 
) 
new 
JsonSerializer -
(- .
). /
./ 0
Deserialize0 ;
(; <
streamReader< H
,H I
typeofJ P
(P Q
TQ R
)R S
)S T
;T U
} 
} 	
} 
} †
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Json\JsonFileWriter.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
JsonF J
{ 
public 

class 
JsonFileWriter 
<  
T  !
>! "
:# $
AbstractFileWriter% 7
<7 8
T8 9
>9 :
where 
T 
: 
class 
{ 
public		 
JsonFileWriter		 
(		 !
IStreamWriterResource		 3
resource		4 <
)		< =
:		> ?
base		@ D
(		D E
resource		E M
)		M N
{

 	
} 	
public 
override 
void 
Write "
(" #
T# $
t% &
)& '
{ 	
using 
( 
var 
streamWriter #
=$ %
Resource& .
.. /
GetStreamWriter/ >
(> ?
)? @
)@ A
{ 
new 
JsonSerializer "
(" #
)# $
.$ %
	Serialize% .
(. /
streamWriter/ ;
,; <
t= >
,> ?
typeof@ F
(F G
TG H
)H I
)I J
;J K
} 
} 	
} 
} Ώ
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\FileStreamReaderResource.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
	ResourcesF O
{ 
public 

class $
FileStreamReaderResource )
:* +!
IStreamReaderResource, A
{ 
public $
FileStreamReaderResource '
(' (
FileInfo( 0
fileInfo1 9
)9 :
{ 	
FileInfo		 
=		 
fileInfo		 
;		  
}

 	
public $
FileStreamReaderResource '
(' (
string( .
fileName/ 7
)7 8
{ 	
FileInfo 
= 
new 
FileInfo #
(# $
fileName$ ,
), -
;- .
} 	
public 
FileInfo 
FileInfo  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
StreamReader 
GetStreamReader +
(+ ,
), -
{ 	
return 
new 
StreamReader #
(# $
FileInfo$ ,
., -
FullName- 5
)5 6
;6 7
} 	
} 
} Ώ
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\FileStreamWriterResource.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
	ResourcesF O
{ 
public 

class $
FileStreamWriterResource )
:* +!
IStreamWriterResource, A
{ 
public $
FileStreamWriterResource '
(' (
FileInfo( 0
fileInfo1 9
)9 :
{ 	
FileInfo		 
=		 
fileInfo		 
;		  
}

 	
public $
FileStreamWriterResource '
(' (
string( .
fileName/ 7
)7 8
{ 	
FileInfo 
= 
new 
FileInfo #
(# $
fileName$ ,
), -
;- .
} 	
public 
FileInfo 
FileInfo  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
StreamWriter 
GetStreamWriter +
(+ ,
), -
{ 	
return 
new 
StreamWriter #
(# $
FileInfo$ ,
., -
FullName- 5
)5 6
;6 7
} 	
} 
} 
‹C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\IStreamReaderResource.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
	ResourcesF O
{ 
public 

	interface !
IStreamReaderResource *
{ 
StreamReader 
GetStreamReader $
($ %
)% &
;& '
} 
}		 
‹C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\IStreamWriterResource.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
	ResourcesF O
{ 
public 

	interface !
IStreamWriterResource *
{ 
StreamWriter 
GetStreamWriter $
($ %
)% &
;& '
} 
}		 
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\StringStreamReaderResource.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 
SharedLibraries '
.' ($
GenericReadersAndWriters( @
.@ A
FileA E
.E F
	ResourcesF O
{ 
public 

class &
StringStreamReaderResource +
:, -!
IStreamReaderResource. C
{ 
private 
readonly 
string 
_resourceString  /
;/ 0
public		 &
StringStreamReaderResource		 )
(		) *
string		* 0
resourceString		1 ?
)		? @
{

 	
_resourceString 
= 
resourceString ,
;, -
} 	
public 
StreamReader 
GetStreamReader +
(+ ,
), -
{ 	
return 2
&GenerateStreamReaderFromResourceString 9
(9 :
_resourceString: I
)I J
;J K
} 	
private 
static 
StreamReader #2
&GenerateStreamReaderFromResourceString$ J
(J K
stringK Q
sR S
)S T
{ 	
var 
stream 
= 
new 
MemoryStream )
() *
)* +
;+ ,
var 
writer 
= 
new 
StreamWriter )
() *
stream* 0
)0 1
;1 2
writer 
. 
Write 
( 
s 
) 
; 
writer 
. 
Flush 
( 
) 
; 
stream 
. 
Position 
= 
$num 
;  
return 
new 
StreamReader #
(# $
stream$ *
)* +
;+ ,
} 	
} 
} 