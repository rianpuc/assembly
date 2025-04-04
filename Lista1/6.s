.text
.globl _start

_start:
    li t0, 1 # +1
    li t1, 20 # expoente +20
    li t2, 12 # expoente +12
    sll t3, t0, t1 # 2 ^ 20 = 1048576
    sll t4, t0, t2 # 2 ^ 12 = 4096
    add a0, t3, t4 # (2 ^ 20) + (2 ^ 12) = 1052672
