lexer grammar Log4jTokens;

CATEGORY
:
	'c' // Used to output the category of the logging event

;

FQCN
:
	'C' // Used to output the fully qualified class name of the caller issuing the logging request

;

DATE
:
	'd' // Used to output the date of the logging event

;

FILE
:
	'F' // Used to output the file name where the logging request was issued

;

LOCATION
:
	'l' // Used to output location information of the caller which generated the logging event

;

LINE
:
	'L' // Used to output the line number from where the logging request was issued

;

MESSAGE
:
	'm' // Used to output the application supplied message associated with the logging event

;

METHOD
:
	'M' // Used to output the method name where the logging request was issued

;

NEW_LINE
:
	'n' // Outputs the platform dependent line separator character or characters

;

PRIORITY
:
	'p' // Used to output the priority of the logging event

;

MILLIS
:
	'r' // Used to output the number of milliseconds elapsed from the construction of the layout until the creation of the logging event

;

THREAD
:
	't' // Used to output the name of the thread that generated the logging event

;

NDC
:
	'x' // Used to output the NDC (nested diagnostic context) associated with the thread that generated the logging event

;

MDC
:
	'X' // Used to output the MDC (mapped diagnostic context) associated with the thread that generated the logging event

;

PERCENT
:
	'%%' // The sequence %% outputs a single percent sign

;

ESC
:
	'%'
;

RIGHT_PADDING
:
	'-'
;

INTEGER
:
	[0-9]+
;

DOT
:
	'.'
;

SPEC_START
:
	'{'
;

SPEC_END
:
	'}'
;

LITERAL
:
	.+?
;