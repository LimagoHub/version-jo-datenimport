Ì
ÅC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Contexts\DocumentsDatabaseContext.cs
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
DocumentsDatabase# 4
.4 5
Contexts5 =
{ 
public 

class $
DocumentsDatabaseContext )
:* +
	DbContext, 5
{ 
public $
DocumentsDatabaseContext '
(' (
)( )
{		 	
}

 	
public $
DocumentsDatabaseContext '
(' (
DbContextOptions( 8
<8 9$
DocumentsDatabaseContext9 Q
>Q R
optionsS Z
)Z [
: 
base 
( 
options 
) 
{ 	
} 	
public 
virtual 
DbSet 
< 
ArchivedFile )
>) *
ArchivedFile+ 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
virtual 
DbSet 
< "
JsonDtosAlertsEntities 3
>3 4"
JsonDtosAlertsEntities5 K
{L M
getN Q
;Q R
setS V
;V W
}X Y
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
if 
( 
! 
optionsBuilder 
.  
IsConfigured  ,
), -
{ 
optionsBuilder 
. 
UseSqlServer +
(+ ,
$str j
)j k
;k l
} 
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder   
.   
Entity   
<    
ArchivedFile    ,
>  , -
(  - .
)  . /
.  / 0
HasKey  0 6
(  6 7
e  7 8
=>  9 ;
e  < =
.  = >
Guid  > B
)  B C
;  C D
modelBuilder!! 
.!! 
Entity!! 
<!!  
ArchivedFile!!  ,
>!!, -
(!!- .
)!!. /
.!!/ 0
HasMany!!0 7
(!!7 8
e!!8 9
=>!!: <
e!!= >
.!!> ?"
JsonDtosAlertsEntities!!? U
)!!U V
."" 
WithOne"" 
("" 
e"" 
=>"" 
e"" 
.""  
ArchivedFile""  ,
)"", -
.""- .
HasForeignKey"". ;
(""; <
e""< =
=>""> @
e""A B
.""B C
ArchivedFileGuid""C S
)""S T
;""T U
modelBuilder$$ 
.$$ 
Entity$$ 
<$$  "
JsonDtosAlertsEntities$$  6
>$$6 7
($$7 8
)$$8 9
.$$9 :
HasKey$$: @
($$@ A
e$$A B
=>$$C E
new$$F I
{$$J K
e$$K L
.$$L M
ArchivedFileGuid$$M ]
,$$] ^
e$$_ `
.$$` a
TimeGenerated$$a n
}$$n o
)$$o p
;$$p q
}%% 	
}&& 
}'' ñ
uC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Entities\ArchivedFile.cs
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
DocumentsDatabase# 4
.4 5
Entities5 =
{ 
public 

class 
ArchivedFile 
{ 
public		 
Guid		 
Guid		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
public

 
DateTime

 
TimeGenerated

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
public 
string 
UseCase 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
Betrachtungstag '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
FileName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 

FileFormat  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
FileContents "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
ICollection 
< "
JsonDtosAlertsEntities 1
>1 2"
JsonDtosAlertsEntities3 I
{J K
getL O
;O P
setQ T
;T U
}V W
} 
} –
C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Entities\JsonDtosAlertsEntities.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
DocumentsDatabase# 4
.4 5
Entities5 =
{ 
public 

class "
JsonDtosAlertsEntities '
{ 
public 
Guid 
ArchivedFileGuid $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
TimeGenerated %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
DtoTypeFullName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
JsonDtos 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
AlertTypeFullName '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 

JsonAlerts  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
EntityTypeFullName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
JsonEntities "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
? "
WarningsApprovedByUser +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
ArchivedFile 
ArchivedFile (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} ∞

wC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\ArchivedFileReader.cs
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
DocumentsDatabase# 4
.4 5
Step5 9
{ 
public 

class 
ArchivedFileReader #
:$ %
IReader& -
<- .
ArchivedFile. :
>: ;
{ 
private		 
readonly		 

JsonFinder		 #
finder		$ *
;		* +
public 
ArchivedFileReader !
(! "
string" (
useCase) 0
,0 1
DateTime2 :
betrachtungstag; J
)J K
{ 	
finder 
= 
new 

JsonFinder #
(# $
useCase$ +
,+ ,
betrachtungstag- <
)< =
;= >
} 	
public 
ArchivedFile 
Read  
(  !
)! "
{ 	
return 
finder 
. !
GetLatestArchivedFile /
(/ 0
)0 1
;1 2
} 	
} 
} ∆
wC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\ArchivedFileWriter.cs
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
DocumentsDatabase# 4
.4 5
Step5 9
{ 
public		 

class		 
ArchivedFileWriter		 #
:		$ %
IWriter		& -
<		- .
ArchivedFile		. :
>		: ;
{

 
public 
void 
Write 
( 
ArchivedFile &
t' (
)( )
{ 	
t 
. 
Guid 
= 
Guid 
. 
NewGuid !
(! "
)" #
;# $
t 
. 
TimeGenerated 
= 
DateTime &
.& '
Now' *
;* +
using 
( 
var 
context 
=  
new! $$
DocumentsDatabaseContext% =
(= >
)> ?
)? @
{ 
ICrudRepository 
<  
ArchivedFile  ,
>, -
repo. 2
=3 4
new5 8
CrudRepository9 G
<G H
ArchivedFileH T
>T U
(U V
contextV ]
)] ^
;^ _
repo 
. 
Insert 
( 
t 
) 
; 
repo 
. 
Save 
( 
) 
; 
} 
} 	
} 
} Ó
uC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\JsonAlertsReader.cs
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
DocumentsDatabase# 4
.4 5
Step5 9
{ 
public 

class 
JsonAlertsReader !
<! "
A" #
># $
:% &
IReader' .
<. /
IList/ 4
<4 5
A5 6
>6 7
>7 8
{		 
private

 
readonly

 

JsonFinder

 #
finder

$ *
;

* +
public 
JsonAlertsReader 
(  
string  &
useCase' .
,. /
DateTime0 8
betrachtungstag9 H
)H I
{ 	
finder 
= 
new 

JsonFinder #
(# $
useCase$ +
,+ ,
betrachtungstag- <
)< =
;= >
} 	
public 
IList 
< 
A 
> 
Read 
( 
) 
{ 	
var 

latestJson 
= 
finder #
.# $
GetLatestJsonByGuid$ 7
(7 8
finder8 >
.> ?!
GetLatestArchivedFile? T
(T U
)U V
.V W
GuidW [
)[ \
;\ ]
return 
JsonConvert 
. 
DeserializeObject 0
<0 1
List1 5
<5 6
A6 7
>7 8
>8 9
(9 :

latestJson: D
.D E

JsonAlertsE O
)O P
;P Q
} 	
} 
} ı
uC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\JsonAlertsWriter.cs
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
" #
DocumentsDatabase

# 4
.

4 5
Step

5 9
{ 
public 

class 
JsonAlertsWriter !
<! "
A" #
># $
:% &
IWriter' .
<. /
IList/ 4
<4 5
A5 6
>6 7
>7 8
where 
A 
: 
IAlert 
{ 
private 
readonly 

JsonFinder #
finder$ *
;* +
public 
JsonAlertsWriter 
(  
string  &
useCase' .
,. /
DateTime0 8
betrachtungstag9 H
)H I
{ 	
finder 
= 
new 

JsonFinder #
(# $
useCase$ +
,+ ,
betrachtungstag- <
)< =
;= >
} 	
public 
void 
Write 
( 
IList 
<  
A  !
>! "
t# $
)$ %
{ 	
var 

latestJson 
= 
finder #
.# $
GetLatestJsonByGuid$ 7
(7 8
finder8 >
.> ?!
GetLatestArchivedFile? T
(T U
)U V
.V W
GuidW [
)[ \
;\ ]

latestJson 
. 
AlertTypeFullName (
=) *
typeof+ 1
(1 2
A2 3
)3 4
.4 5
FullName5 =
;= >

latestJson 
. 

JsonAlerts !
=" #
JsonConvert$ /
./ 0
SerializeObject0 ?
(? @
t@ A
)A B
;B C
if   
(   
(   
(   
List   
<   
A   
>   
)   
t   
)   
.   
Find   "
(  " #
x  # $
=>  % '
x  ( )
.  ) *
Level  * /
==  0 2

AlertLevel  3 =
.  = >
Warnung  > E
)  E F
!=  G I
null  J N
&&!! 
(!! 
(!! 
List!! 
<!! 
A!! 
>!! 
)!! 
t!! 
)!!  
.!!  !
Find!!! %
(!!% &
x!!& '
=>!!( *
x!!+ ,
.!!, -
Level!!- 2
==!!3 5

AlertLevel!!6 @
.!!@ A
Fehler!!A G
)!!G H
==!!I K
null!!L P
)!!P Q

latestJson"" 
."" "
WarningsApprovedByUser"" 1
=""2 3
false""4 9
;""9 :
using$$ 
($$ 
var$$ 
context$$ 
=$$  
new$$! $$
DocumentsDatabaseContext$$% =
($$= >
)$$> ?
)$$? @
{%% 
ICrudRepository&& 
<&&  "
JsonDtosAlertsEntities&&  6
>&&6 7
repo&&8 <
=&&= >
new&&? B
CrudRepository&&C Q
<&&Q R"
JsonDtosAlertsEntities&&R h
>&&h i
(&&i j
context&&j q
)&&q r
;&&r s
repo'' 
.'' 
Update'' 
('' 

latestJson'' &
)''& '
;''' (
repo(( 
.(( 
Save(( 
((( 
)(( 
;(( 
})) 
}** 	
}++ 
},, Ô
sC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\JsonDtosReader.cs
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
DocumentsDatabase# 4
.4 5
Step5 9
{ 
public 

class 
JsonDtosReader 
<  
DTO  #
># $
:% &
IReader' .
<. /
IList/ 4
<4 5
DTO5 8
>8 9
>9 :
{		 
private

 
readonly

 

JsonFinder

 #
finder

$ *
;

* +
public 
JsonDtosReader 
( 
string $
useCase% ,
,, -
DateTime. 6
betrachtungstag7 F
)F G
{ 	
finder 
= 
new 

JsonFinder #
(# $
useCase$ +
,+ ,
betrachtungstag- <
)< =
;= >
} 	
public 
IList 
< 
DTO 
> 
Read 
( 
)  
{ 	
var 

latestJson 
= 
finder #
.# $
GetLatestJsonByGuid$ 7
(7 8
finder8 >
.> ?!
GetLatestArchivedFile? T
(T U
)U V
.V W
GuidW [
)[ \
;\ ]
return 
JsonConvert 
. 
DeserializeObject 0
<0 1
IList1 6
<6 7
DTO7 :
>: ;
>; <
(< =

latestJson= G
.G H
JsonDtosH P
)P Q
;Q R
} 	
} 
} ˝
sC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\JsonDtosWriter.cs
	namespace		 	
BBk		
 
.		 
Rc1		 
.		 
Ricis		 
.		 

DataImport		 "
.		" #
DocumentsDatabase		# 4
.		4 5
Step		5 9
{

 
public 

class 
JsonDtosWriter 
<  
DTO  #
># $
:% &
IWriter' .
<. /
IList/ 4
<4 5
DTO5 8
>8 9
>9 :
{ 
private 
readonly 

JsonFinder #
finder$ *
;* +
public 
JsonDtosWriter 
( 
string $
useCase% ,
,, -
DateTime. 6
betrachtungstag7 F
)F G
{ 	
finder 
= 
new 

JsonFinder #
(# $
useCase$ +
,+ ,
betrachtungstag- <
)< =
;= >
} 	
public 
void 
Write 
( 
IList 
<  
DTO  #
># $
t% &
)& '
{ 	
var 
archivedFileGuid  
=! "
finder# )
.) *!
GetLatestArchivedFile* ?
(? @
)@ A
.A B
GuidB F
;F G
var "
jsonDtosAlertsEntities &
=' (
new) ,"
JsonDtosAlertsEntities- C
{ 
ArchivedFileGuid  
=! "
archivedFileGuid# 3
,3 4
TimeGenerated 
= 
DateTime  (
.( )
Now) ,
,, -
DtoTypeFullName 
=  !
typeof" (
(( )
DTO) ,
), -
.- .
FullName. 6
,6 7
JsonDtos 
= 
JsonConvert &
.& '
SerializeObject' 6
(6 7
t7 8
)8 9
,9 :"
WarningsApprovedByUser &
=' (
null) -
} 
; 
using   
(   
var   
context   
=    
new  ! $$
DocumentsDatabaseContext  % =
(  = >
)  > ?
)  ? @
{!! 
ICrudRepository"" 
<""  "
JsonDtosAlertsEntities""  6
>""6 7
repo""8 <
=""= >
new""? B
CrudRepository""C Q
<""Q R"
JsonDtosAlertsEntities""R h
>""h i
(""i j
context""j q
)""q r
;""r s
repo## 
.## 
Insert## 
(## "
jsonDtosAlertsEntities## 2
)##2 3
;##3 4
repo$$ 
.$$ 
Save$$ 
($$ 
)$$ 
;$$ 
}%% 
}&& 	
}'' 
}(( ˜
wC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\JsonEntitiesReader.cs
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
DocumentsDatabase# 4
.4 5
Step5 9
{ 
public 

class 
JsonEntitiesReader #
<# $
E$ %
>% &
:' (
IReader) 0
<0 1
IList1 6
<6 7
E7 8
>8 9
>9 :
{		 
private

 
readonly

 

JsonFinder

 #
finder

$ *
;

* +
public 
JsonEntitiesReader !
(! "
string" (
useCase) 0
,0 1
DateTime2 :
betrachtungstag; J
)J K
{ 	
finder 
= 
new 

JsonFinder #
(# $
useCase$ +
,+ ,
betrachtungstag- <
)< =
;= >
} 	
public 
IList 
< 
E 
> 
Read 
( 
) 
{ 	
var 

latestJson 
= 
finder #
.# $
GetLatestJsonByGuid$ 7
(7 8
finder8 >
.> ?!
GetLatestArchivedFile? T
(T U
)U V
.V W
GuidW [
)[ \
;\ ]
return 
JsonConvert 
. 
DeserializeObject 0
<0 1
IList1 6
<6 7
E7 8
>8 9
>9 :
(: ;

latestJson; E
.E F
JsonEntitiesF R
)R S
;S T
} 	
} 
} Ú
wC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\JsonEntitiesWriter.cs
	namespace		 	
BBk		
 
.		 
Rc1		 
.		 
Ricis		 
.		 

DataImport		 "
.		" #
DocumentsDatabase		# 4
.		4 5
Step		5 9
{

 
public 

class 
JsonEntitiesWriter #
<# $
E$ %
>% &
:' (
IWriter) 0
<0 1
IList1 6
<6 7
E7 8
>8 9
>9 :
{ 
private 
readonly 

JsonFinder #
finder$ *
;* +
public 
JsonEntitiesWriter !
(! "
string" (
useCase) 0
,0 1
DateTime2 :
betrachtungstag; J
)J K
{ 	
finder 
= 
new 

JsonFinder #
(# $
useCase$ +
,+ ,
betrachtungstag- <
)< =
;= >
} 	
public 
void 
Write 
( 
IList 
<  
E  !
>! "
t# $
)$ %
{ 	
var 

latestJson 
= 
finder #
.# $
GetLatestJsonByGuid$ 7
(7 8
finder8 >
.> ?!
GetLatestArchivedFile? T
(T U
)U V
.V W
GuidW [
)[ \
;\ ]

latestJson 
. 
EntityTypeFullName )
=* +
typeof, 2
(2 3
E3 4
)4 5
.5 6
FullName6 >
;> ?

latestJson 
. 
JsonEntities #
=$ %
JsonConvert& 1
.1 2
SerializeObject2 A
(A B
tB C
)C D
;D E
using 
( 
var 
context 
=  
new! $$
DocumentsDatabaseContext% =
(= >
)> ?
)? @
{   
ICrudRepository!! 
<!!  "
JsonDtosAlertsEntities!!  6
>!!6 7
repo!!8 <
=!!= >
new!!? B
CrudRepository!!C Q
<!!Q R"
JsonDtosAlertsEntities!!R h
>!!h i
(!!i j
context!!j q
)!!q r
;!!r s
repo"" 
."" 
Update"" 
("" 

latestJson"" &
)""& '
;""' (
repo## 
.## 
Save## 
(## 
)## 
;## 
}$$ 
}%% 	
}&& 
}'' ì
oC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\JsonFinder.cs
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
DocumentsDatabase# 4
.4 5
Step5 9
{ 
public		 

class		 

JsonFinder		 
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
string 
useCase  '
;' (
public 

JsonFinder 
( 
string  
useCase! (
,( )
DateTime* 2
betrachtungstag3 B
)B C
{ 	
this 
. 
useCase 
= 
useCase "
;" #
this 
. 
betrachtungstag  
=! "
betrachtungstag# 2
;2 3
} 	
public 
ArchivedFile !
GetLatestArchivedFile 1
(1 2
)2 3
{ 	
using 
( 
var 
context 
=  
new! $$
DocumentsDatabaseContext% =
(= >
)> ?
)? @
{ 
return 
new 
CrudRepository )
<) *
ArchivedFile* 6
>6 7
(7 8
context8 ?
)? @
.@ A
GetAllA G
(G H
)H I
.I J
ToListJ P
(P Q
)Q R
. 
FindAll 
( 
x 
=> !
x" #
.# $
UseCase$ +
==, .
useCase/ 6
&&7 9
x: ;
.; <
Betrachtungstag< K
==L N
betrachtungstagO ^
)^ _
. 
OrderBy 
( 
x 
=> !
x" #
.# $
TimeGenerated$ 1
)1 2
.2 3
LastOrDefault3 @
(@ A
)A B
;B C
}   
}!! 	
public## "
JsonDtosAlertsEntities## %
GetLatestJsonByGuid##& 9
(##9 :
Guid##: >
archivedFileGuid##? O
)##O P
{$$ 	
using%% 
(%% 
var%% 
context%% 
=%%  
new%%! $$
DocumentsDatabaseContext%%% =
(%%= >
)%%> ?
)%%? @
{&& 
return'' 
new'' 
CrudRepository'' )
<'') *"
JsonDtosAlertsEntities''* @
>''@ A
(''A B
context''B I
)''I J
.''J K
GetAll''K Q
(''Q R
)''R S
.''S T
ToList''T Z
(''Z [
)''[ \
.(( 
FindAll(( 
((( 
x(( 
=>(( !
x((" #
.((# $
ArchivedFileGuid(($ 4
==((5 7
archivedFileGuid((8 H
)((H I
.)) 
OrderBy)) 
()) 
x)) 
=>)) !
x))" #
.))# $
TimeGenerated))$ 1
)))1 2
.))2 3
LastOrDefault))3 @
())@ A
)))A B
;))B C
}** 
}++ 	
},, 
}-- ø
}C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\DocumentsDatabase\Step\TextToArchivedFileReader.cs
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
DocumentsDatabase# 4
.4 5
Step5 9
{ 
public		 

class		 $
TextToArchivedFileReader		 )
:		* +
IReader		, 3
<		3 4
ArchivedFile		4 @
>		@ A
{

 
private 
readonly 
DateTime !
betrachtungstag" 1
;1 2
private 
readonly 
FileInfo !
fileInfo" *
;* +
private 
readonly 
string 
useCase  '
;' (
public $
TextToArchivedFileReader '
(' (
string( .
useCase/ 6
,6 7
DateTime8 @
betrachtungstagA P
,P Q
FileInfoR Z
fileInfo[ c
)c d
{ 	
this 
. 
useCase 
= 
useCase "
;" #
this 
. 
betrachtungstag  
=! "
betrachtungstag# 2
;2 3
this 
. 
fileInfo 
= 
fileInfo $
;$ %
} 	
public $
TextToArchivedFileReader '
(' (
string( .
useCase/ 6
,6 7
DateTime8 @
betrachtungstagA P
,P Q
stringR X
fileNameY a
)a b
{ 	
this 
. 
useCase 
= 
useCase "
;" #
this 
. 
betrachtungstag  
=! "
betrachtungstag# 2
;2 3
fileInfo   
=   
new   
FileInfo   #
(  # $
fileName  $ ,
)  , -
;  - .
}!! 	
public## 
ArchivedFile## 
Read##  
(##  !
)##! "
{$$ 	
if%% 
(%% 
!%% 
fileInfo%% 
.%% 
Exists%%  
)%%  !
throw%%" '
new%%( +
IOException%%, 7
(%%7 8
$"%%8 :
File %%: ?
{%%? @
fileInfo%%@ H
.%%H I
FullName%%I Q
}%%Q R
 does not exist.%%R b
"%%b c
)%%c d
;%%d e
string&& 
readContents&& 
;&&  
using'' 
('' 
var'' 
streamReader'' #
=''$ %
new''& )
StreamReader''* 6
(''6 7
fileInfo''7 ?
.''? @
FullName''@ H
,''H I
Encoding''J R
.''R S
UTF8''S W
)''W X
)''X Y
{(( 
readContents)) 
=)) 
streamReader)) +
.))+ ,
	ReadToEnd)), 5
())5 6
)))6 7
;))7 8
}** 
return,, 
new,, 
ArchivedFile,, #
{-- 
UseCase.. 
=.. 
useCase.. !
,..! "
Betrachtungstag// 
=//  !
betrachtungstag//" 1
,//1 2
FileName00 
=00 
fileInfo00 #
.00# $
Name00$ (
,00( )

FileFormat11 
=11 
fileInfo11 %
.11% &
	Extension11& /
,11/ 0
FileContents22 
=22 
readContents22 +
}33 
;33 
}44 	
}55 
}66 