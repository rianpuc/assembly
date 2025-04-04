section .data
    msg db 'Digite um numero: '
    len equ $ - msg
    msga db 'Voce digitou: '
    lena equ $ - msga

section .bss
    num resb 5

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, num
    mov edx, 5
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msga
    mov edx, lena
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, num
    mov edx, 5
    int 0x80

    mov eax, 1
    int 0x80
