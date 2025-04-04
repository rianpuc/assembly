.text
.globl _start

_start:
    li t0, -1 #t0 = 0xFFFFFFFF
    li t1, 8192 #t1 = +8192
    li t2, 4 #t2 + 4
    mul t3, t1, t2 #t1 * t2 = 32768
    sub a0, t0, t3 #0xFFFFFFFF + 32768
