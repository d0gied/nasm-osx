; signed decimal to/from EAX
extern io_get_dec, io_print_dec
; unsigned decimal to/from EAX
extern io_get_udec, io_print_udec
; char to/from EAX
extern io_get_char, io_print_char
; address in EAX, length in EDX
extern io_get_string
; address in EAX
extern io_print_string
extern io_newline


section .note.GNU-stack ; for the linker(to avoid warnings, not necessary)

section .data
msg db "Hello, world!", 0xa, 0x0 ; message and newline


global main
section .text

main:
    mov eax, msg
    call io_print_string

    xor eax, eax ; return 0
    ret