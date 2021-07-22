�	
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
} �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\Database\Repository\RepositoryDeleter.cs
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
} �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\Database\Repository\RepositoryInserter.cs
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
} �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\Database\Repository\RepositoryReader.cs
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
} �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\Database\Repository\RepositoryUpdater.cs
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
} �
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
} �	
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
} �+
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Csv\AbstractCsvFileReader.cs
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
}FF �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Csv\LineTokenizer\DefaultCommaSeparatedLineTokenizer.cs
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
} ��
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Csv\LineTokenizer\FieldSet.cs
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
�� 
success
�� 
=
�� 
ushort
��  
.
��  !
TryParse
��! )
(
��) *
Tokens
��* 0
[
��0 1
position
��1 9
]
��9 :
,
��: ;
out
��< ?
var
��@ C
returnValue
��D O
)
��O P
;
��P Q
return
�� 
success
�� 
?
�� 
returnValue
�� (
:
��) *
defaultValue
��+ 7
??
��8 :
throw
��; @
new
��A D#
ArgumentNullException
��E Z
(
��Z [
$str
��[ f
+
��g h
position
��i q
)
��q r
;
��r s
}
�� 	
public
�� 
uint
�� 
ReadUInt
�� 
(
�� 
int
��  
position
��! )
,
��) *
uint
��+ /
?
��/ 0
defaultValue
��1 =
=
��> ?
null
��@ D
)
��D E
{
�� 	
var
�� 
success
�� 
=
�� 
uint
�� 
.
�� 
TryParse
�� '
(
��' (
Tokens
��( .
[
��. /
position
��/ 7
]
��7 8
,
��8 9
out
��: =
var
��> A
returnValue
��B M
)
��M N
;
��N O
return
�� 
success
�� 
?
�� 
returnValue
�� (
:
��) *
defaultValue
��+ 7
??
��8 :
throw
��; @
new
��A D#
ArgumentNullException
��E Z
(
��Z [
$str
��[ f
+
��g h
position
��i q
)
��q r
;
��r s
}
�� 	
public
�� 
ulong
�� 
	ReadULong
�� 
(
�� 
int
�� "
position
��# +
,
��+ ,
ulong
��- 2
?
��2 3
defaultValue
��4 @
=
��A B
null
��C G
)
��G H
{
�� 	
var
�� 
success
�� 
=
�� 
ulong
�� 
.
��  
TryParse
��  (
(
��( )
Tokens
��) /
[
��/ 0
position
��0 8
]
��8 9
,
��9 :
out
��; >
var
��? B
returnValue
��C N
)
��N O
;
��O P
return
�� 
success
�� 
?
�� 
returnValue
�� (
:
��) *
defaultValue
��+ 7
??
��8 :
throw
��; @
new
��A D#
ArgumentNullException
��E Z
(
��Z [
$str
��[ f
+
��g h
position
��i q
)
��q r
;
��r s
}
�� 	
public
�� 
string
�� 

ReadString
��  
(
��  !
string
��! '
name
��( ,
,
��, -
string
��. 4
defaultValue
��5 A
=
��B C
null
��D H
,
��H I
bool
��J N
trim
��O S
=
��T U
true
��V Z
)
��Z [
{
�� 	
return
�� 

ReadString
�� 
(
�� 
Array
�� #
.
��# $
IndexOf
��$ +
(
��+ ,
Names
��, 1
,
��1 2
name
��3 7
)
��7 8
,
��8 9
defaultValue
��: F
,
��F G
trim
��H L
)
��L M
;
��M N
}
�� 	
public
�� 
decimal
�� 
ReadDecimal
�� "
(
��" #
string
��# )
name
��* .
,
��. /
decimal
��0 7
?
��7 8
defaultValue
��9 E
=
��F G
decimal
��H O
.
��O P
Zero
��P T
,
��T U
NumberStyles
�� 
styles
�� 
=
��  !
NumberStyles
��" .
.
��. /
Float
��/ 4
,
��4 5
CultureInfo
��6 A
cultureInfo
��B M
=
��N O
null
��P T
)
��T U
{
�� 	
return
�� 
ReadDecimal
�� 
(
�� 
Array
�� $
.
��$ %
IndexOf
��% ,
(
��, -
Names
��- 2
,
��2 3
name
��4 8
)
��8 9
,
��9 :
defaultValue
��; G
,
��G H
styles
��I O
,
��O P
cultureInfo
��Q \
)
��\ ]
;
��] ^
}
�� 	
public
�� 
DateTime
�� 
ReadDateTime
�� $
(
��$ %
string
��% +
name
��, 0
,
��0 1
DateTime
��2 :
?
��: ;
defaultValue
��< H
=
��I J
null
��K O
,
��O P
string
��Q W
format
��X ^
=
��_ `
$str
��a k
,
��k l
CultureInfo
�� 
cultureInfo
�� #
=
��$ %
null
��& *
)
��* +
{
�� 	
return
�� 
ReadDateTime
�� 
(
��  
Array
��  %
.
��% &
IndexOf
��& -
(
��- .
Names
��. 3
,
��3 4
name
��5 9
)
��9 :
,
��: ;
defaultValue
��< H
,
��H I
format
��J P
,
��P Q
cultureInfo
��R ]
)
��] ^
;
��^ _
}
�� 	
public
�� 
TimeSpan
�� 
ReadTime
��  
(
��  !
string
��! '
name
��( ,
,
��, -
TimeSpan
��. 6
?
��6 7
defaultValue
��8 D
=
��E F
null
��G K
,
��K L
string
��M S
format
��T Z
=
��[ \
$str
��] g
,
��g h
CultureInfo
�� 
cultureInfo
�� #
=
��$ %
null
��& *
)
��* +
{
�� 	
return
�� 
ReadTime
�� 
(
�� 
Array
�� !
.
��! "
IndexOf
��" )
(
��) *
Names
��* /
,
��/ 0
name
��1 5
)
��5 6
,
��6 7
defaultValue
��8 D
,
��D E
format
��F L
,
��L M
cultureInfo
��N Y
)
��Y Z
;
��Z [
}
�� 	
public
�� 

BigInteger
�� 
ReadBigInteger
�� (
(
��( )
string
��) /
name
��0 4
,
��4 5

BigInteger
��6 @
?
��@ A
defaultValue
��B N
=
��O P
null
��Q U
,
��U V
NumberFormatInfo
�� 
numberFormat
�� )
=
��* +
null
��, 0
)
��0 1
{
�� 	
return
�� 
ReadBigInteger
�� !
(
��! "
Array
��" '
.
��' (
IndexOf
��( /
(
��/ 0
Names
��0 5
,
��5 6
name
��7 ;
)
��; <
,
��< =
defaultValue
��> J
,
��J K
numberFormat
��L X
)
��X Y
;
��Y Z
}
�� 	
public
�� 
int
�� 
ReadInteger
�� 
(
�� 
string
�� %
name
��& *
,
��* +
int
��, /
?
��/ 0
defaultValue
��1 =
=
��> ?
null
��@ D
)
��D E
{
�� 	
return
�� 
ReadInteger
�� 
(
�� 
Array
�� $
.
��$ %
IndexOf
��% ,
(
��, -
Names
��- 2
,
��2 3
name
��4 8
)
��8 9
,
��9 :
defaultValue
��; G
)
��G H
;
��H I
}
�� 	
public
�� 
long
�� 
ReadLong
�� 
(
�� 
string
�� #
name
��$ (
,
��( )
long
��* .
?
��. /
defaultValue
��0 <
=
��= >
null
��? C
)
��C D
{
�� 	
return
�� 
ReadLong
�� 
(
�� 
Array
�� !
.
��! "
IndexOf
��" )
(
��) *
Names
��* /
,
��/ 0
name
��1 5
)
��5 6
,
��6 7
defaultValue
��8 D
)
��D E
;
��E F
}
�� 	
public
�� 
byte
�� 
ReadByte
�� 
(
�� 
string
�� #
name
��$ (
,
��( )
byte
��* .
?
��. /
defaultValue
��0 <
=
��= >
null
��? C
)
��C D
{
�� 	
return
�� 
ReadByte
�� 
(
�� 
Array
�� !
.
��! "
IndexOf
��" )
(
��) *
Names
��* /
,
��/ 0
name
��1 5
)
��5 6
,
��6 7
defaultValue
��8 D
)
��D E
;
��E F
}
�� 	
public
�� 
sbyte
�� 
	ReadSByte
�� 
(
�� 
string
�� %
name
��& *
,
��* +
sbyte
��, 1
?
��1 2
defaultValue
��3 ?
=
��@ A
null
��B F
)
��F G
{
�� 	
return
�� 
	ReadSByte
�� 
(
�� 
Array
�� "
.
��" #
IndexOf
��# *
(
��* +
Names
��+ 0
,
��0 1
name
��2 6
)
��6 7
,
��7 8
defaultValue
��9 E
)
��E F
;
��F G
}
�� 	
public
�� 
bool
�� 
ReadBool
�� 
(
�� 
string
�� #
name
��$ (
,
��( )
bool
��* .
?
��. /
defaultValue
��0 <
=
��= >
null
��? C
)
��C D
{
�� 	
return
�� 
ReadBool
�� 
(
�� 
Array
�� !
.
��! "
IndexOf
��" )
(
��) *
Names
��* /
,
��/ 0
name
��1 5
)
��5 6
,
��6 7
defaultValue
��8 D
)
��D E
;
��E F
}
�� 	
public
�� 
short
�� 
	ReadShort
�� 
(
�� 
string
�� %
name
��& *
,
��* +
short
��, 1
?
��1 2
defaultValue
��3 ?
=
��@ A
null
��B F
)
��F G
{
�� 	
return
�� 
	ReadShort
�� 
(
�� 
Array
�� "
.
��" #
IndexOf
��# *
(
��* +
Names
��+ 0
,
��0 1
name
��2 6
)
��6 7
,
��7 8
defaultValue
��9 E
)
��E F
;
��F G
}
�� 	
public
�� 
double
�� 

ReadDouble
��  
(
��  !
string
��! '
name
��( ,
,
��, -
double
��. 4
?
��4 5
defaultValue
��6 B
=
��C D
null
��E I
,
��I J
CultureInfo
��K V
cultureInfo
��W b
=
��c d
null
��e i
)
��i j
{
�� 	
return
�� 

ReadDouble
�� 
(
�� 
Array
�� #
.
��# $
IndexOf
��$ +
(
��+ ,
Names
��, 1
,
��1 2
name
��3 7
)
��7 8
,
��8 9
defaultValue
��: F
,
��F G
cultureInfo
��H S
)
��S T
;
��T U
}
�� 	
public
�� 
float
�� 
	ReadFloat
�� 
(
�� 
string
�� %
name
��& *
,
��* +
float
��, 1
?
��1 2
defaultValue
��3 ?
=
��@ A
null
��B F
,
��F G
CultureInfo
��H S
cultureInfo
��T _
=
��` a
null
��b f
)
��f g
{
�� 	
return
�� 
	ReadFloat
�� 
(
�� 
Array
�� "
.
��" #
IndexOf
��# *
(
��* +
Names
��+ 0
,
��0 1
name
��2 6
)
��6 7
,
��7 8
defaultValue
��9 E
,
��E F
cultureInfo
��G R
)
��R S
;
��S T
}
�� 	
public
�� 
char
�� 
ReadChar
�� 
(
�� 
string
�� #
name
��$ (
,
��( )
char
��* .
?
��. /
defaultValue
��0 <
=
��= >
null
��? C
)
��C D
{
�� 	
return
�� 
ReadChar
�� 
(
�� 
Array
�� !
.
��! "
IndexOf
��" )
(
��) *
Names
��* /
,
��/ 0
name
��1 5
)
��5 6
,
��6 7
defaultValue
��8 D
)
��D E
;
��E F
}
�� 	
public
�� 
ushort
�� 

ReadUShort
��  
(
��  !
string
��! '
name
��( ,
,
��, -
ushort
��. 4
?
��4 5
defaultValue
��6 B
=
��C D
null
��E I
)
��I J
{
�� 	
return
�� 

ReadUShort
�� 
(
�� 
Array
�� #
.
��# $
IndexOf
��$ +
(
��+ ,
Names
��, 1
,
��1 2
name
��3 7
)
��7 8
,
��8 9
defaultValue
��: F
)
��F G
;
��G H
}
�� 	
public
�� 
uint
�� 
ReadUInt
�� 
(
�� 
string
�� #
name
��$ (
,
��( )
uint
��* .
?
��. /
defaultValue
��0 <
=
��= >
null
��? C
)
��C D
{
�� 	
return
�� 
ReadUInt
�� 
(
�� 
Array
�� !
.
��! "
IndexOf
��" )
(
��) *
Names
��* /
,
��/ 0
name
��1 5
)
��5 6
,
��6 7
defaultValue
��8 D
)
��D E
;
��E F
}
�� 	
public
�� 
ulong
�� 
	ReadULong
�� 
(
�� 
string
�� %
name
��& *
,
��* +
ulong
��, 1
?
��1 2
defaultValue
��3 ?
=
��@ A
null
��B F
)
��F G
{
�� 	
return
�� 
	ReadULong
�� 
(
�� 
Array
�� "
.
��" #
IndexOf
��# *
(
��* +
Names
��+ 0
,
��0 1
name
��2 6
)
��6 7
,
��7 8
defaultValue
��9 E
)
��E F
;
��F G
}
�� 	
}
�� 
}�� �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Csv\LineTokenizer\ILineTokenizer.cs
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
} �
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
} �
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
} �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\FileStreamReaderResource.cs
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
} �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\FileStreamWriterResource.cs
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
} �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\IStreamReaderResource.cs
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
}		 �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\IStreamWriterResource.cs
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
}		 �
�C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\GenericReadersAndWriters\File\Resources\StringStreamReaderResource.cs
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