format PE console
entry start

include 'd:\fasm\include\win32a.inc'

;======================================
section '.data' data readable writeable
;======================================

hello_msg db 'Hello, world!',0

;=======================================
section '.code' code readable executable
;=======================================

start:
	ccall	[printf],hello_msg
	ccall	[getchar]
	stdcall	[ExitProcess],0

;====================================
section '.idata' import data readable
;====================================

library kernel,'kernel32.dll',\
        msvcrt,'msvcrt.dll'

import kernel,\
       ExitProcess,'ExitProcess'

import msvcrt,\
       printf,'printf',\
       getchar, '_fgetchar'