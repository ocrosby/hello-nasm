section .data
    msg db "Hello, NASM in CLion!", 0xA  ; Message with newline
    len equ $ - msg  ; Calculate message length

section .text
    global _start

_start:
    ; sys_write (macOS syscall: rax = 0x2000004)
    mov rax, 0x2000004  ; write syscall
    mov rdi, 1          ; stdout
    lea rsi, [rel msg]  ; RIP-relative addressing
    mov rdx, len        ; Message length
    syscall

    ; sys_exit (macOS syscall: rax = 0x2000001)
    mov rax, 0x2000001  ; exit syscall
    xor rdi, rdi        ; Exit code 0
    syscall
