global _start

section .text
_start:     
    ; write(1, message, 16)
    mov     rax, 1          ; sys_write
    mov     rdi, 1          ; stdout
    mov     rsi, message    ; buffer
    mov     rdx, 16         ; length
    syscall

    ; exit(0)
    mov     rax, 60         ; sys_exit
    xor     rdi, rdi        ; status = 0
    syscall

section .data
message db "Hello, World!..", 10