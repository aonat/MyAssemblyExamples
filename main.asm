section .data
;Define constants
EXIT_SUCCESS    equ 0 ;successful operation
SYS_exit    equ 60 ;call code for terminate
;Byte var declarations
bVar1   db  17
bVar2   db  9
bRes    db  0
;word var declarations
wVar1   dw  17000
wVar2   dw  9000
wRes    dw  0
;double-word var declarations
dVar1   dd  17000000
dVar2   dd  9000000
dRes    dd  0
;quad-word var declarations
qVar1   dq  170000000
qVar2   dq  90000000
qRes    dq  0
;*************************
;Code Section

section .text
global _start
_start:
    ;byte example
    ;bRes = bVar1 + bVar2
    mov al, byte[bVar1]
    add al, byte[bVar2]
    mov byte[bRes], al
    ;word example
    ;wResult = wVar1 + wVar2
    mov ax, word[wVar1]
    add ax, word[wVar2]
    mov word[wRes], ax
    ;double-word example
    ;dResult = dVar1 + dVar2
    mov eax, dword[dVar1]
    add eax, dword[dVar2]
    mov dword[dRes], eax
    ;quadword example
    ;qRes = qVar1 + qVar2
    mov rax, qword[qVar1]
    add rax, qword[qVar2]
    mov qword[qRes], rax
    ;************************************
    ;Terminate program
    last:
        mov rax, SYS_exit
        mov rdi, EXIT_SUCCESS
        syscall
