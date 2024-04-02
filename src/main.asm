section .note.GNU-stack ; for the linker(to avoid warnings, not necessary)

section .data
msg db "Hello, world!", 0xa ; message and newline
msglen equ $ - msg

global main
section .text

main:
  ; hello world
  mov eax, 4 ; sys_write
  mov ebx, 1 ; stdout
  mov ecx, msg ; message
  mov edx, msglen ; message length
  int 0x80 ; syscall
  ; exit
  xor eax, eax ; return 0
  ret