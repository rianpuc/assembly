.text
.globl _start

_start:
    li t0, 3 # x = 3
    li t1, 4 # y = 4
    li t2, 15 # +15
    li t3, 67 # +67
    li t4, 4 # +4
    mul t5, t2, t0 # 15 * x = 45
    mul t6, t3, t1 # 67 * y = 268
    add a0, t5, t6 # 45 + 268 = 313
    mul a1, a0, t4 # 313 * 4 = 1252