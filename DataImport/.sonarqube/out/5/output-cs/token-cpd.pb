õ
_C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\Alerts\AlertField.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
Alerts# )
{ 
public 

class 

AlertField 
{ 
private 
PropertyInfo 
_propertyInfo *
;* +
[ 	
Key	 
] 
public 
Guid 
DtoGuid !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
	NotMapped	 
] 
[ 	

JsonIgnore	 
] 
public 
PropertyInfo 
PropertyInfo (
{ 	
get 
=> 
_propertyInfo  
;  !
set 
{ 
_propertyInfo 
= 
value  %
;% &
PropertyName 
= 
value $
.$ %
Name% )
;) *
} 
} 	
public 
string 
PropertyName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public!! 
override!! 
string!! 
ToString!! '
(!!' (
)!!( )
{"" 	
return## 
$"## 
{## 
DtoGuid## 
}## 
, ##  
{##  !
PropertyName##! -
}##- .
"##. /
;##/ 0
}$$ 	
}%% 
}&& ‚
_C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\Alerts\AlertLevel.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
Alerts# )
{ 
public 

enum 

AlertLevel 
{ 
Info 
, 
Warnung		 
,		 
Fehler

 
} 
} “<
dC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\Alerts\DataImportAlert.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
Alerts# )
{ 
public 

class 
DataImportAlert  
:! "
IAlert# )
{ 
private 
Type 
_dtoType 
; 
[ 	
Key	 
] 
public 
Guid 
AlertId !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
	NotMapped	 
] 
[ 	

JsonIgnore	 
] 
public 
Type 
DtoType 
{ 	
get 
=> 
_dtoType 
; 
set 
{ 
_dtoType 
= 
value  
;  !
DtoTypeFullName 
=  !
value" '
.' (
FullName( 0
;0 1
} 
} 	
public   
string   
DtoTypeFullName   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
public!! 
List!! 
<!! 

AlertField!! 
>!! 
AlertFields!!  +
{!!, -
get!!. 1
;!!1 2
set!!3 6
;!!6 7
}!!8 9
=!!: ;
new!!< ?
List!!@ D
<!!D E

AlertField!!E O
>!!O P
(!!P Q
)!!Q R
;!!R S
public"" 
DateTime"" 
Time"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
public## 
string## 
Message## 
{## 
get##  #
;### $
set##% (
;##( )
}##* +
public%% 

AlertLevel%% 
Level%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public// 
static// 
DataImportAlert// %
GetInstance//& 1
<//1 2
DTO//2 5
>//5 6
(//6 7

AlertLevel//7 A
level//B G
,//G H
string//I O
message//P W
)//W X
{00 	
return11 
GetInstance11 
(11 
level11 $
,11$ %
message11& -
,11- .
typeof11/ 5
(115 6
DTO116 9
)119 :
)11: ;
;11; <
}22 	
public44 
static44 
DataImportAlert44 %
GetInstance44& 1
(441 2

AlertLevel442 <
level44= B
,44B C
string44D J
message44K R
,44R S
Type44T X
type44Y ]
)44] ^
{55 	
return66 
new66 
DataImportAlert66 &
{77 
AlertId88 
=88 
Guid88 
.88 
NewGuid88 &
(88& '
)88' (
,88( )
Level99 
=99 
level99 
,99 
DtoType:: 
=:: 
type:: 
,:: 
Time;; 
=;; 
DateTime;; 
.;;  
Now;;  #
,;;# $
Message<< 
=<< 
message<< !
}== 
;== 
}>> 	
publicGG 
DataImportAlertGG 
AddAlertFieldGG ,
<GG, -
DTOGG- 0
>GG0 1
(GG1 2
GuidGG2 6
dtoGuidGG7 >
,GG> ?
stringGG@ F
propertyNameGGG S
)GGS T
{HH 	
AlertFieldsII 
.II 
AddII 
(II 
newII 

AlertFieldII  *
{JJ 
DtoGuidKK 
=KK 
dtoGuidKK !
,KK! "
PropertyInfoLL 
=LL 
typeofLL %
(LL% &
DTOLL& )
)LL) *
.LL* +
GetPropertyLL+ 6
(LL6 7
propertyNameLL7 C
)LLC D
}MM 
)MM 
;MM 
returnNN 
thisNN 
;NN 
}OO 	
publicQQ 
DataImportAlertQQ 
AddAlertFieldQQ ,
(QQ, -
GuidQQ- 1
dtoGuidQQ2 9
,QQ9 :
stringQQ; A
propertyNameQQB N
,QQN O
TypeQQP T
typeQQU Y
)QQY Z
{RR 	
AlertFieldsSS 
.SS 
AddSS 
(SS 
newSS 

AlertFieldSS  *
{TT 
DtoGuidUU 
=UU 
dtoGuidUU !
,UU! "
PropertyInfoVV 
=VV 
typeVV #
.VV# $
GetPropertyVV$ /
(VV/ 0
propertyNameVV0 <
)VV< =
}WW 
)WW 
;WW 
returnXX 
thisXX 
;XX 
}YY 	
public[[ 
DataImportAlert[[ 
AddAlertField[[ ,
([[, -
Guid[[- 1
dtoGuid[[2 9
,[[9 :
string[[; A
propertyName[[B N
)[[N O
{\\ 	
AlertFields]] 
.]] 
Add]] 
(]] 
new]] 

AlertField]]  *
{^^ 
DtoGuid__ 
=__ 
dtoGuid__ !
,__! "
PropertyInfo`` 
=`` 
DtoType`` &
.``& '
GetProperty``' 2
(``2 3
propertyName``3 ?
)``? @
}aa 
)aa 
;aa 
returnbb 
thisbb 
;bb 
}cc 	
publicee 
DataImportAlertee 
AddAlertFieldee ,
<ee, -
Tee- .
>ee. /
(ee/ 0
Tee0 1
itemee2 6
,ee6 7
stringee8 >
propertyNameee? K
,eeK L
stringeeM S
idNameeeT Z
=ee[ \
$stree] c
)eec d
{ff 	
AlertFieldsgg 
.gg 
Addgg 
(gg 
newgg 

AlertFieldgg  *
{hh 
DtoGuidii 
=ii 
(ii 
Guidii 
)ii  
typeofii! '
(ii' (
Tii( )
)ii) *
.ii* +
GetPropertyii+ 6
(ii6 7
idNameii7 =
)ii= >
.ii> ?
GetValueii? G
(iiG H
itemiiH L
)iiL M
,iiM N
PropertyInfojj 
=jj 
typeofjj %
(jj% &
Tjj& '
)jj' (
.jj( )
GetPropertyjj) 4
(jj4 5
propertyNamejj5 A
)jjA B
}kk 
)kk 
;kk 
returnll 
thisll 
;ll 
}mm 	
publicpp 
overridepp 
stringpp 
ToStringpp '
(pp' (
)pp( )
{qq 	
varrr 
retvalrr 
=rr 
$"rr 
{rr 
Levelrr !
}rr! "
, rr" $
{rr$ %
DtoTypeFullNamerr% 4
}rr4 5
, rr5 7
{rr7 8
Timerr8 <
}rr< =
, rr= ?
{rr? @
Messagerr@ G
}rrG H
"rrH I
;rrI J
foreachss 
(ss 
varss 

alertFieldss #
inss$ &
AlertFieldsss' 2
)ss2 3
retvalss4 :
+=ss; =
$"ss> @
\n  ss@ D
{ssD E

alertFieldssE O
}ssO P
"ssP Q
;ssQ R
returntt 
retvaltt 
;tt 
}uu 	
}vv 
}ww è
[C:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\Alerts\IAlert.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
Alerts# )
{ 
public 

	interface 
IAlert 
{ 

AlertLevel 
Level 
{ 
get 
; 
set  #
;# $
}% &
} 
} ™
dC:\Users\JoachimWagner\Documents\Projekte\Bundesbank\SpielWiese\DataImport\Alerts\IAlertGenerator.cs
	namespace 	
BBk
 
. 
Rc1 
. 
Ricis 
. 

DataImport "
." #
Alerts# )
{ 
public 

	interface 
IAlertGenerator $
{ 
IList 
< 
DataImportAlert 
> 
	GetAlerts (
(( )
)) *
;* +
} 
}		 