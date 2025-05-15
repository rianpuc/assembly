.data
    x1: .word 15
    x2: .word 25
    x3: .word 13
    x4: .word 17
.text
.globl _start
_start:
    addi s1, zero, 1  # x = 1
    la a0, x1
    lw t0, 0(a0)
    la a1, x2
    lw t1, 0(a1)
    la a2, x3
    lw t2, 0(a2)
    la a3, x4
    lw t3, 0(a3)
