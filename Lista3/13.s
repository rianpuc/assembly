.data
    a: .word 1,3,5,7,9
    b: .word 2,4,6,8,10
.text
.globl _start
_start:
    li s0, 1
    li s1, 2
    li s2, 3
    li s3, 4
    li s4, 5
    la a0, a
    la a1, b
    lw t0, 0(a0)
    lw t1, 0(a1)
    mul t1, t1, s0
    add t0, t0, t1
    sw t0, 0(a0)
    lw t0, 4(a0)
    lw t1, 4(a1)
    mul t1, t1, s1
    add t0, t0, t1
    sw t0, 4(a0)
    lw t0, 8(a0)
    lw t1, 8(a1)
    mul t1, t1, s2
    add t0, t0, t1
    sw t0, 8(a0)
    lw t0, 12(a0)
    lw t1, 12(a1)
    mul t1, t1, s3
    add t0, t0, t1
    sw t0, 12(a0)
    lw t0, 16(a0)
    lw t1, 16(a1)
    mul t1, t1, s4
    add t0, t0, t1
    sw t0, 16(a0)
