.data
    x1: .word 15
    x2: .word 25
    x3: .word 13
    x4: .word 17
    soma: .word -1
.text
.globl _start
_start:
    la a0, x1
    lw t0, 0(a0)
    la a0, x2
    lw t1, 0(a0)
    add t0, t0, t1
    la a0, x3
    lw t1, 0(a0)
    add t0, t0, t1
    la a0, x4
    lw t1, 0(a0)
    add t0, t0, t1
    la a0, soma
    sw t0, 0(a0)