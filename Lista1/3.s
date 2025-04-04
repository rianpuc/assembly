.text
.globl _start

_start:
    li t0, 3 #x = 3
    li t1, 4 #y = 4
    li t2, 15 # +15
    li t3, 67 # +67
    li t4, 4 # +4
    sub t5, t2, t0 # 15 - x = 12
    sub t6, t3, t1 # 67 - y = 63
    add a0, t5, t6 # (15-x) + (67-y) = 75
    add a1, a0, t4 # 75 + 4 = 79