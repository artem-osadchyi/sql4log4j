grammar Log4jPattern;

import Log4jTokens;

// Not completed yet

expression
:
	ESC format_modifier? conversion_character
	(
		precision_specifier
		| date_format_specifier
	)
;

format_modifier
:
	RIGHT_PADDING? INTEGER? DOT? INTEGER?
;

precision_specifier
:
	SPEC_START INTEGER SPEC_END
;

date_format_specifier
:
	SPEC_START SPEC_END
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