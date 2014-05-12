grammar Expression;

expression
:
	O_OP expression O_CP # parentheses
	| O_NOT expression # not
	| expression O_AND expression # and
	| expression O_OR expression # or
	| atomicExpression # atomic
;

atomicExpression
:
	column O_EQUALS T_STRING_LITERAL # equals
	| column O_MATCHES T_STRING_LITERAL # matches
	| column O_NOT_EQUALS T_STRING_LITERAL # notEquals
	| column O_NOT_MATCHES T_STRING_LITERAL # notMatches
;

column
:
	C_CATEGORY
	| C_FQCN
	| C_DATE
	| C_FILE
	| C_LOCATION
	| C_LINE
	| C_MESSAGE
	| C_METHOD
	| C_PRIORITY
	| C_MILLIS
	| C_THREAD
	| C_NDC
	| C_MDC
;

O_EQUALS
:
	'=='
;

O_MATCHES
:
	'=~'
;

O_NOT_EQUALS
:
	'!='
;

O_NOT_MATCHES
:
	'!~'
;

O_NOT
:
	'!'
	| N O T
;

O_AND
:
	'&&'
	| A N D
;

O_OR
:
	'||'
	| O R
;

O_OP
:
	'('
;

O_CP
:
	')'
;

C_CATEGORY
:
	C A T E G O R Y
;

C_FQCN
:
	F Q C N
;

C_DATE
:
	D A T E
;

C_FILE
:
	F I L E
;

C_LOCATION
:
	L O C A T I O N
;

C_LINE
:
	L I N E
;

C_MESSAGE
:
	M E S S A G E
;

C_METHOD
:
	M E T H O D
;

C_PRIORITY
:
	P R I O R I T Y
;

C_MILLIS
:
	M I L L I S
;

C_THREAD
:
	T H R E A D
;

C_NDC
:
	N D C
;

C_MDC
:
	M D C
;

fragment
A
:
	[aA]
;

fragment
B
:
	[bB]
;

fragment
C
:
	[cC]
;

fragment
D
:
	[dD]
;

fragment
E
:
	[eE]
;

fragment
F
:
	[fF]
;

fragment
G
:
	[gG]
;

fragment
H
:
	[hH]
;

fragment
I
:
	[iI]
;

fragment
J
:
	[jJ]
;

fragment
K
:
	[kK]
;

fragment
L
:
	[lL]
;

fragment
M
:
	[mM]
;

fragment
N
:
	[nN]
;

fragment
O
:
	[oO]
;

fragment
P
:
	[pP]
;

fragment
Q
:
	[qQ]
;

fragment
R
:
	[rR]
;

fragment
S
:
	[sS]
;

fragment
T
:
	[tT]
;

fragment
U
:
	[uU]
;

fragment
V
:
	[vV]
;

fragment
W
:
	[wW]
;

fragment
X
:
	[xX]
;

fragment
Y
:
	[yY]
;

fragment
Z
:
	[zZ]
;

T_STRING_LITERAL
:
	'"' .*? '"'
;

T_WHITESPACE
:
	[ \t \r \n]+ -> skip
;

T_VALUE
:
	.+?
;