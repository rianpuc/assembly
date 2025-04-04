.text
.globl _start

_start:
    li t0, 1 #x = 1
    li t1, 20 #5 + 15
    sub a0, t1, t0 #20 - x