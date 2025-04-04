.text
.globl _start

_start:
    li x8, 0x12345678
    srli x9, x8, 24
    or x9, x9, x0
    srli x10, x8, 16
    slli t0, x9, 8
    xor x10, t0, x10
    srli x11, x8, 8
    slli t0, x9, 16
    xor x11, t0, x11
    slli t0, x10, 8
    xor x11, t0, x11
    slli t0, x9, 24
    xor x12, t0, x8
    slli t0, x10, 16
    xor x12, t0, x12
    slli t0, x11, 8
    xor x12, t0, x12