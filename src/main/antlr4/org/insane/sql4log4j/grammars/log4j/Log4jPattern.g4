grammar Log4jPattern;

import Log4jTokens;

// Not completed yet

pattern
:
	(
		expression
		| LITERAL
	)+
;

expression
:
	ESC format_modifier? conversion_character precision_specifier?
;

format_modifier
:
	RIGHT_PADDING? INTEGER?
	(
		DOT INTEGER
	)?
;

precision_specifier
:
	SPEC_START INTEGER SPEC_END
;

conversion_character
:
	CATEGORY
	| FQCN
	| DATE
	| FILE
	| LOCATION
	| LINE
	| MESSAGE
	| METHOD
	| NEW_LINE
	| PRIORITY
	| MILLIS
	| THREAD
	| NDC
	| MDC
;