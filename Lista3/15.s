.data
    a: .word 3
    b: .word 50
    x: .word 0
.text
.globl _start
_start:
    la a0, a
    la a1, b
    la t2, x
    li s0, 0
    li s1, 50
    lw t0, 0(a0)
    blt t0, s0, fim
    lw t0, 0(a1)
    bgt t0, s1, fim
    li t0, 1
    sw t0, 0(t2)

fim:
    nop