; ============================================================
; helloworld_linux_x64.asm
;
; Linux x64 NASM
; System V i386 ABI
;
; ============================================================

global _start

section .text
_start:
    ; write(1, message, 16)
    mov     eax, 4          ; sys_write
    mov     ebx, 1          ; stdout
    mov     ecx, message    ; buffer
    mov     edx, 16         ; length
    int     0x80

    ; exit(0)
    mov     eax, 1          ; sys_exit
    xor     ebx, ebx        ; status = 0
    int     0x80

section .data
message db "Hello, World!..", 10
