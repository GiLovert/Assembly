section .data
    text1 db "Input operation: "

section .bss
    operation resb 16
 
section .text
    global _start
_start:
 
    call _printText1
    call _getName
    call _printOperation
 
    mov rax, 60
    mov rdi, 0
    syscall
 
_getName:
    mov rax, 0
    mov rdi, 0
    mov rsi, operation
    mov rdx, 16
    syscall
    ret
 
_printText1:
    mov rax, 1
    mov rdi, 1
    mov rsi, text1
    mov rdx, 17
    syscall
    ret

_printOperation:
    mov rax, 1
    mov rdi, 1
    mov rsi, operation
    mov rdx, 16
    syscall
    ret