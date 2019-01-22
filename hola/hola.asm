; -----------
; Write "Hola, mundo" to console using a C library.
;
;
; -------------

        global  main
        extern  puts
        
        section .text
main:
        mov     rdi, message
        call    puts
        ret
message:
        db      "Hola, mundo", 0
