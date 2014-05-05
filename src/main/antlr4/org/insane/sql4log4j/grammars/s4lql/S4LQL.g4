grammar S4LQL;

statement
:
	selectStatement
;

selectStatement
:
	SELECT resultColumns
	(
		FROM subQuery
	)? WHERE condition
;

resultColumns
:
	ALL_WILDCARD
	| COLUMN
	(
		SEPARATOR COLUMN
	)+?
;

subQuery
:
	SUBQUERY_START selectStatement SUBQUERY_END
;

condition
:
	TRUE
	| FALSE
;

SELECT
:
	S E L E C T
;

FROM
:
	F R O M
;

WHERE
:
	W H E R E
;

ALL_WILDCARD
:
	'*'
;

fragment
COLUMN
:
	CATEGORY
	| FQCN
	| DATE
	| FILE
	| LOCATION
	| LINE
	| MESSAGE
	| METHOD
	| PRIORITY
	| MILLIS
	| THREAD
	| NDC
	| MDC
;

SEPARATOR
:
	','
;

SUBQUERY_START
:
	'('
;

SUBQUERY_END
:
	')'
;

TRUE
:
	T R U E
;

FALSE
:
	F A L S E
;

CATEGORY
:
	C A T E G O R Y
;

FQCN
:
	F Q C N
;

DATE
:
	D A T E
;

FILE
:
	F I L E
;

LOCATION
:
	L O C A T I O N
;

LINE
:
	L I N E
;

MESSAGE
:
	M E S S A G E
;

METHOD
:
	M E T H O D
;

PRIORITY
:
	P R I O R I T Y
;

MILLIS
:
	M I L L I S
;

THREAD
:
	T H R E A D
;

NDC
:
	N D C
;

MDC
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