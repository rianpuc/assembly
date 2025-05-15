.data
    starting: .word 0x00020002
    red: .word 0x00FF0000

.text
.globl _start

_start:
    li t0, 0 #y
    li t1, 6
    li t3, 0 #x 
    li a0, 0x101
    li a1, 0x00FFFFFF
    ecall

outer:
    beq t0, t1, fim
    la a1, starting
    lw a1, 0(a1)
    add a1, a1, t0
    addi t0, t0, 1
    li t3, 0

inner:
    beq t3, t1, outer
    li a0, 0x100
    la a2, red
    lw a2, 0(a2)
    ecall
    addi t3, t3, 1
    li t2, 1
    slli t2, t2, 16
    add a1, a1, t2
    j inner

fim:
    nop
    nop