SECTION .data
a db 11
nl db 0Ah

SECTION .text
global _start
_start:
    mov eax, a

loop:
    cmp byte [eax], 2
    jl print
    sub byte  [eax], 2
    jmp loop

print:
    add byte [eax], 48
    mov ecx, eax
    mov eax, 4
    mov edx, 2
    mov ebx, 1 
    int 80h

    mov ecx, nl
    int 80h

    xor ebx, ebx
    mov eax, 1
    int 80h
    ret