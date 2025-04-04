.text
.globl _start

_start:
    li t0, 1 # x = 1
    li t1, 5 # +5
    li t2, 15 # +15
    mul t3, t1, t0 # 5 * x = 5
    add a0, t3, t2 # (5 * x) + 15 = 20